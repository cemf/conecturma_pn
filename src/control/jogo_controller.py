from bottle import view, get, request, redirect, route, BaseResponse

from src.facade.facade import Facade
from src.model.redis import DbUsuario

facade = Facade()

"""Controle do jogo """


@get('/jogos')
@view('ojogo')
def jogo():
    """
    jogo que recebe o parâmetro de qual botão foi clicado e armazena a quantidade de acertos
    :return: nome do jogo
    """
    if request.get_cookie("login", secret='2524'):
        jogo = request.params['n1']
        return dict(nome_jogo=jogo)
    else:
        redirect('/')


""" Controle do score """


@get('/ponto')
def ponto():
    """
    pega o botão que o jogador clicou e incrementa os pontos, em caso de acerto
    :return:ao termino do jogo volta a pagina do menu
    """

    jogo = request.params['jogo']
    ponto = int(request.params['ponto'])
    usuario = request.get_cookie("login", secret="2524")

    facade.PontoJogoFacade(usuario, jogo, ponto)

    redirect('/')

    """ redirect('/jogos', BaseResponse.add_header(jogo=jogo ,value=jogo))"""


"""Controle que mostra o score """


@get('/mostrar_score')
@view('score')
def mostrar_score():
    """
    mostra a pontuação
    :return: O numero de acertos de cada jogo
    """
    ponto = facade.PesquisaAlunoFacade(request.get_cookie("login", secret='2524'))
    return dict(ponto_j_um = ponto['pontos_j1'],ponto_j_dois = ponto['pontos_j2'])