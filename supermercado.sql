-- CreateTable
CREATE TABLE `Administrador` (
    `id_administrador` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(255) NOT NULL,
    `cpf` VARCHAR(14) NOT NULL,
    `data_nascimento` DATETIME(3),
    `id_endereco` INTEGER,

    PRIMARY KEY (`id_administrador`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Cliente` (
    `id_cliente` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(255) NOT NULL,
    `cpf` VARCHAR(14) NOT NULL,
    `data_nascimento` DATETIME(3),

    PRIMARY KEY (`id_cliente`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Funcionario` (
    `id_funcionario` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(255) NOT NULL,
    `cpf` VARCHAR(14) NOT NULL,
    `data_nascimento` DATETIME(3),
    `id_endereco` INTEGER,

    PRIMARY KEY (`id_funcionario`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Fornecedor` (
    `id_fornecedor` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(255) NOT NULL,
    `cnpj` VARCHAR(14) NOT NULL,
    `telefone` VARCHAR(20),
    `id_endereco` INTEGER,

    PRIMARY KEY (`id_fornecedor`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Endereco` (
    `id_endereco` INTEGER NOT NULL AUTO_INCREMENT,
    `logradouro` VARCHAR(255) NOT NULL,
    `cep` VARCHAR(10) NOT NULL,
    `numero` VARCHAR(10),
    `cidade` VARCHAR(255) NOT NULL,
    `bairro` VARCHAR(255),

    PRIMARY KEY (`id_endereco`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Produto` (
    `id_produto` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(255) NOT NULL,
    `marca` VARCHAR(255),
    `categoria` VARCHAR(255),
    `descricao` VARCHAR(255),
    `valor_unitario` DECIMAL(10, 2) NOT NULL,
    `data_fabricacao` DATETIME(3),
    `data_validade` DATETIME(3),
    `quantidade` INTEGER,

    PRIMARY KEY (`id_produto`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Administrador` ADD CONSTRAINT `Administrador_id_endereco_fkey` FOREIGN KEY (`id_endereco`) REFERENCES `Endereco`(`id_endereco`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Funcionario` ADD CONSTRAINT `Funcionario_id_endereco_fkey` FOREIGN KEY (`id_endereco`) REFERENCES `Endereco`(`id_endereco`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Fornecedor` ADD CONSTRAINT `Fornecedor_id_endereco_fkey` FOREIGN KEY (`id_endereco`) REFERENCES `Endereco`(`id_endereco`) ON DELETE RESTRICT ON UPDATE CASCADE;
