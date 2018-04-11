from model.medalha_model import DbMedalha

class MedalhaFacade:

    def __init__(self):
        """
        método para utilização do banco de dados
        """
        self.medalha = DbMedalha()


    def create_medalha_facade(self, nome, tipo):
        self.medalha.create_medalha(nome, tipo)

    def read_medalha_facade(self):
        return self.medalha.read_medalha()

    def delete_medalha_facade(self, delete_ids):
        self.medalha.delete_medalha(delete_ids)

    def pesquisa_medalha_facade(self, nome):
        self.medalha.pesquisa_medalha(nome)


