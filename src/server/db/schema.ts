import { randomUUID } from "crypto";
import { relations } from "drizzle-orm";
import {
  int,
  timestamp,
  mysqlTable,
  primaryKey,
  varchar,
  mysqlEnum,
  double,
  boolean,
} from "drizzle-orm/mysql-core";
import { type AdapterAccount } from "next-auth/adapters";

export const users = mysqlTable("user", {
  id: varchar("id", { length: 255 }).notNull().primaryKey(),
  name: varchar("name", { length: 255 }),
  email: varchar("email", { length: 255 }).notNull(),
  emailVerified: timestamp("emailVerified", {
    mode: "date",
    fsp: 3,
  }).defaultNow(),
  image: varchar("image", { length: 255 }),
  role: mysqlEnum("role", ["user", "admin"]).default("user"),
});

export const accounts = mysqlTable(
  "account",
  {
    userId: varchar("userId", { length: 255 })
      .notNull()
      .references(() => users.id, { onDelete: "cascade" }),
    type: varchar("type", { length: 255 })
      .$type<AdapterAccount["type"]>()
      .notNull(),
    provider: varchar("provider", { length: 255 }).notNull(),
    providerAccountId: varchar("providerAccountId", { length: 255 }).notNull(),
    refresh_token: varchar("refresh_token", { length: 255 }),
    access_token: varchar("access_token", { length: 255 }),
    expires_at: int("expires_at"),
    token_type: varchar("token_type", { length: 255 }),
    scope: varchar("scope", { length: 255 }),
    id_token: varchar("id_token", { length: 2048 }),
    session_state: varchar("session_state", { length: 255 }),
  },
  account => ({
    compoundKey: primaryKey({
      columns: [account.provider, account.providerAccountId],
    }),
  }),
);

export const sessions = mysqlTable("session", {
  sessionToken: varchar("sessionToken", { length: 255 }).notNull().primaryKey(),
  userId: varchar("userId", { length: 255 })
    .notNull()
    .references(() => users.id, { onDelete: "cascade" }),
  expires: timestamp("expires", { mode: "date" }).notNull(),
});

export const verificationTokens = mysqlTable(
  "verificationToken",
  {
    identifier: varchar("identifier", { length: 255 }).notNull(),
    token: varchar("token", { length: 255 }).notNull(),
    expires: timestamp("expires", { mode: "date" }).notNull(),
  },
  vt => ({
    compoundKey: primaryKey({ columns: [vt.identifier, vt.token] }),
  }),
);

export const currency = mysqlTable("currency", {
  userId: varchar("userId", { length: 255 })
    .notNull()
    .references(() => users.id, { onDelete: "cascade" })
    .primaryKey(),
  cash: double("cash").default(0),
  dust: double("dust").default(0),
  numExpeditionsRemaining: int("numExpeditionsRemaining").default(3),
});

export const pokemons = mysqlTable("pokemon", {
  entry: int("entry").notNull().primaryKey(),
  name: varchar("name", { length: 50 }).notNull(),
  type: mysqlEnum("type", [
    "Normal",
    "Fire",
    "Water",
    "Grass",
    "Flying",
    "Fighting",
    "Poison",
    "Electric",
    "Ground",
    "Rock",
    "Psychic",
    "Ice",
    "Bug",
    "Ghost",
    "Steel",
    "Dragon",
    "Dark",
    "Fairy",
  ]).notNull(),
  icon: varchar("icon", { length: 1000 }).notNull(),
  rarity: mysqlEnum("rarity", [
    "common",
    "uncommon",
    "rare",
    "epic",
    "legendary",
    "mythic",
  ]).notNull(),
});

export const pokemonsRelations = relations(pokemons, ({ many }) => ({
  pokemonsToAbilities: many(abilities),
  pokemonsToEvolutions: many(evolutions),
}));

export const abilities = mysqlTable("ability", {
  id: int("id").notNull().primaryKey().autoincrement(),
  name: varchar("name", { length: 255 }).notNull(),
});

export const abilitiesRelations = relations(abilities, ({ many }) => ({
  pokemonsToAbilities: many(pokemons),
}));

export const pokemonsToAbilities = mysqlTable(
  "pokemonToAbility",
  {
    pokemonEntry: int("pokemonEntry")
      .notNull()
      .references(() => pokemons.entry, { onDelete: "cascade" }),
    abilityId: int("abilityId")
      .notNull()
      .references(() => abilities.id, { onDelete: "cascade" }),
  },
  at => ({
    pk: primaryKey(at.pokemonEntry, at.abilityId),
  }),
);

export const pokemonsToAbilitiesRelations = relations(
  pokemonsToAbilities,
  ({ one }) => ({
    pokemon: one(pokemons, {
      fields: [pokemonsToAbilities.pokemonEntry],
      references: [pokemons.entry],
    }),
    ability: one(abilities, {
      fields: [pokemonsToAbilities.abilityId],
      references: [abilities.id],
    }),
  }),
);

export const evolutions = mysqlTable("evolution", {
  id: int("id").notNull().primaryKey().autoincrement(),
  pokemonFrom: int("pokemonFrom")
    .notNull()
    .references(() => pokemons.entry, { onDelete: "cascade" }),
  pokemonTo: int("pokemonTo").references(() => pokemons.entry, {
    onDelete: "cascade",
  }),
});

export const evolutionsRelations = relations(evolutions, ({ many }) => ({
  pokemonsToEvolutions: many(pokemons),
}));

export const pokemonsToEvolutions = mysqlTable(
  "pokemonToEvolution",
  {
    pokemonEntry: int("pokemonEntry")
      .notNull()
      .references(() => pokemons.entry, { onDelete: "cascade" }),
    evolutionId: int("evolutionId").references(() => evolutions.id, {
      onDelete: "cascade",
    }),
  },
  pe => ({
    pk: primaryKey(pe.pokemonEntry, pe.evolutionId),
  }),
);

export const pokemonsToEvolutionsRelations = relations(
  pokemonsToEvolutions,
  ({ one }) => ({
    pokemon: one(pokemons, {
      fields: [pokemonsToEvolutions.pokemonEntry],
      references: [pokemons.entry],
    }),
    evolution: one(evolutions, {
      fields: [pokemonsToEvolutions.evolutionId],
      references: [evolutions.id],
    }),
  }),
);

export const rouletteLogs = mysqlTable(
  "rouletteLogs",
  {
    userId: varchar("userId", { length: 255 })
      .notNull()
      .references(() => users.id, { onDelete: "cascade" }),
    pokemonName: varchar("pokemonName", { length: 50 })
      .notNull()
      .references(() => pokemons.name, { onDelete: "cascade" }),
    timeRolled: timestamp("timeRolled", {
      mode: "date",
      fsp: 3,
    }).defaultNow(),
  },
  rl => ({
    pk: primaryKey(rl.userId, rl.pokemonName, rl.timeRolled),
  }),
);

export const inventoryPokemons = mysqlTable("inventoryPokemon", {
  id: varchar("id", { length: 255 })
    .$defaultFn(() => randomUUID())
    .primaryKey(),
  userId: varchar("userId", { length: 255 })
    .notNull()
    .references(() => users.id, { onDelete: "cascade" }),
  pokemonEntry: int("pokemonEntry")
    .notNull()
    .references(() => pokemons.entry, { onDelete: "cascade" }),
  shiny: boolean("shiny").notNull(),
  level: int("level").default(5),
  exp: int("exp").default(0),
  busy: boolean("busy").default(false),
});

export const expeditions = mysqlTable(
  "expedition",
  {
    userId: varchar("userId", { length: 255 })
      .notNull()
      .references(() => users.id, { onDelete: "cascade" }),
    slotOne: varchar("slotOne", { length: 255 })
      .notNull()
      .references(() => inventoryPokemons.id, { onDelete: "cascade" }),
    slotTwo: varchar("slotOne", { length: 255 })
      .notNull()
      .references(() => inventoryPokemons.id, { onDelete: "cascade" }),
    slotThree: varchar("slotOne", { length: 255 })
      .notNull()
      .references(() => inventoryPokemons.id, { onDelete: "cascade" }),
    location: int("location").notNull(),
    duration: int("duration").notNull(),
    timeStarted: timestamp("timeStarted", {
      mode: "date",
      fsp: 3,
    }).defaultNow(),
  },
  exp => ({
    pk: primaryKey(exp.userId, exp.slotOne, exp.slotTwo, exp.slotThree),
  }),
);

export const pokemonStats = mysqlTable("pokemonStatus", {
  pokemonEntry: int("pokemonEntry")
    .notNull()
    .references(() => pokemons.entry, { onDelete: "cascade" })
    .primaryKey(),
  hp: int("hp").notNull(),
  attack: int("attack").notNull(),
  defense: int("defense").notNull(),
  specialAttack: int("specialAttack").notNull(),
  specialDefense: int("specialDefense").notNull(),
  speed: int("speed").notNull(),
});
