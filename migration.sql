-- CreateTable
CREATE TABLE "Bebe" (
    "nomebebe" TEXT NOT NULL,
    "CPF" TEXT NOT NULL PRIMARY KEY,
    "data_nasb" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "peso_nas" INTEGER NOT NULL,
    "altura" REAL NOT NULL,
    "maenome" TEXT NOT NULL,
    "mednome" TEXT NOT NULL,
    CONSTRAINT "Bebe_maenome_fkey" FOREIGN KEY ("maenome") REFERENCES "Mae" ("CPF") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Bebe_mednome_fkey" FOREIGN KEY ("mednome") REFERENCES "Medico" ("CRM") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Mae" (
    "nomemae" TEXT NOT NULL,
    "CPF" TEXT NOT NULL PRIMARY KEY,
    "data_nasm" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "endereco" TEXT NOT NULL,
    "telefone" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Medico" (
    "nomemedico" TEXT NOT NULL,
    "CRM" TEXT NOT NULL PRIMARY KEY,
    "telefone" TEXT NOT NULL,
    "especialidade" TEXT NOT NULL
);


-- CreateIndex
CREATE UNIQUE INDEX "Bebe_CPF_key" ON "Bebe"("CPF");

-- CreateIndex
CREATE UNIQUE INDEX "Mae_CPF_key" ON "Mae"("CPF");

-- CreateIndex
CREATE UNIQUE INDEX "Mae_telefone_key" ON "Mae"("telefone");

-- CreateIndex
CREATE UNIQUE INDEX "Medico_CRM_key" ON "Medico"("CRM");

-- CreateIndex
CREATE UNIQUE INDEX "Medico_telefone_key" ON "Medico"("telefone");
