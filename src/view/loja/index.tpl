% include('./header.tpl', title = 'Conecturma')
<div class="row">
    <div align="center" class="col-md-12">
        <h1>Loja</h1>
        <br>
        <form action="/compras_loja">
            <div class="row">
                <%if itens:
                    for x in itens:
                %>
                    <div class="col-md-3">
                        {{x.nome_item}}<br>
                        R${{x.preco_item}},00<br>
                        <button type="submit" name="id" value='{{x.id}}'>Comprar</button>
                    </div>
                    <br>
                <%end
                    else:
                %>
                    <h1>Não possui Itens cadastrados</h1>
                %end
            </div>
        </form>
        <a href="/user_menu">
            <button>voltar</button>
        </a>
    </div>
</div>
        % include('./footer.tpl')