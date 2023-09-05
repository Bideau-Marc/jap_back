-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "login" TEXT NOT NULL,
    "mdp" TEXT,
    "pseudo" TEXT,
    "admin" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Controle" (
    "id" SERIAL NOT NULL,
    "exercicesReponses" TEXT NOT NULL,
    "note" INTEGER NOT NULL,
    "date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "personneId" INTEGER NOT NULL,

    CONSTRAINT "Controle_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Theme" (
    "id" SERIAL NOT NULL,
    "thematique" TEXT NOT NULL,

    CONSTRAINT "Theme_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Caractere" (
    "id" SERIAL NOT NULL,
    "francais" TEXT NOT NULL,
    "japonaisKata" TEXT,
    "japonaisHira" TEXT,
    "kanji" TEXT,
    "themeId" INTEGER NOT NULL,

    CONSTRAINT "Caractere_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_login_key" ON "User"("login");

-- CreateIndex
CREATE UNIQUE INDEX "Theme_thematique_key" ON "Theme"("thematique");

-- AddForeignKey
ALTER TABLE "Controle" ADD CONSTRAINT "Controle_personneId_fkey" FOREIGN KEY ("personneId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Caractere" ADD CONSTRAINT "Caractere_themeId_fkey" FOREIGN KEY ("themeId") REFERENCES "Theme"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
