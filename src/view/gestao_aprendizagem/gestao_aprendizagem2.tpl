%include('gestao_aprendizagem/header/header.tpl', title="Gestão Aprendizagem", css="css-gestao-aprendizagem.css")
%include('gestao_aprendizagem/menu/menu.tpl')
<div class="col-md-9 order-md-3 texto-inicial" style="margin-top: 70px;">
    <div style="margin-left: 41px;">
        <div class="row">
            <div class="col-md-3">
                <form method="POST" enctype="multipart/form-data" action="/upload_img">
                    <label for="img-obs" class="efeito-img">
                        <span class="muda_foto_obs efeito-img">mudar foto</span>
                        <img src="/static/fotos_usuarios/{{foto_obs}}" class="profile-image blah img-responsive img-circle">
                    </label>
                    <input type="file" id='img-obs' name="uploadfile" onchange="readURL(this);" style="display:none"/><br>
                    <input type="submit" value="Salvar" class="botao-salvar"/>
                </form>
            </div>
            <div class="col-md-9">
                <div class="row fonte-texto" style="margin-top:18px;">
                    <h3 class="Ola">Olá <strong>{{usuario}}</strong></h3>
                    <p>
                        Bem-vindo ao ambiente de gestão de aprendizagem. Aqui você<br> poderá acompanhar o desempenho
                        dos seu aluno ou da sua turma<br> de uma maneira fácil e intuitiva.
                    </p>
                </div>
            </div>

        </div>


    </div>
    <div class="row tutorial-block">
        <div class="col-md-3" style="margin-left: 40px; margin-right: 70px;">
            <div class="relatorios-img" style="margin-left: 37px;">
                <img src="/static/img/relatorios.png">
            </div>
            <br/>
            <br/>
            <p class="fonte-texto" style="font-size: 15.45px;">Em <a href="#" class="relatorios-tut-font"><strong>relatórios</strong></a>,
                com poucos cliques você terá acesso ao desempenho do aluno, de toda a turma e também da escola.</p>
        </div>
        <div class="col-md-3 tutorial-gerenciamento">
            <div style="margin-left: 37px;">
                <img class="img-cadastros" src="/static/img/cadastros.png">
            </div>
            <br/><br/>

            <p class="fonte-texto" style="font-size: 15.45px;">Para criar novos cadastros, editar os já existentes,
                excluir ou modificar informações variadas de alunos, turmas e escolas, clique em <a href="#"
                                                                                                    class="gerenciam-tut-font"><strong>
                    Gerenciamento de Cadastros</strong></a></p>
        </div>
        <div class="col-md-3">
            <div class="img-recursos_pedagogicos" style="margin-left: 37px;">
                <img src="/static/img/recursos_pedagogicos.png">
            </div>
            <br/><br/>
            <p class="fonte-texto" style="font-size: 15.45px;">Você ainda pode ter<br> acesso a diversos<br> material
                exclusivos da Conecturma na área <a href="#" class="recursos-tut-font"><strong> Recursos
                    Pedagógicos</strong></a>, <br> tais como guias, manuais, infográficos e versões diditais de livros.
            </p>
        </div>
    </div>
</div>
<script>
function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                ext=input.files[0].name.split('.')[1];
                console.log(ext);
                if (ext != 'png'){
                alert('POOOOO , coloca um png ae');
                }

                reader.onload = function (e) {
                    $('.blah')
                        .attr('src', e.target.result)
                       // .width(150)
                       //  .height(200);
                };

                reader.readAsDataURL(input.files[0]);

            }
        }
</script>
%include('gestao_aprendizagem/footer/footer.tpl')