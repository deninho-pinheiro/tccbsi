Introdução
=========

A classe tccbsi é um modelo LaTeX para o TCC do curso de BSI.

Dependências
=========

O modelo depende do abnTeX2, que pode ser baixado na página do projeto em:
http://code.google.com/p/abntex2/

Instalação
=========

Baixe o pacote do abnTeX2 no link
http://code.google.com/p/abntex2/downloads/detail?name=abntex2.tds-1.4.zip&can=2&q=
crie uma pasta com o nome texmf na pasta do seu usuário e extraia o pacote
dentro dela.

E por ultimo, copie o arquivo tccbsi.cls para a pasta onde está seu documento
LaTeX.

Uso
=========

Para usar a classe tccbsi, simplesmente defina a documentclass com a classe
tccbsi.

Exemplo:
\documentclass{tccbsi}
% resto do arquivo .tex

Scripts
=========

Na pasta script, você pode encontrar scripts para ajudar na construção do seu
documento LaTeX.

O script autobuild.sh, constrói o documento .tex quando percebe que houve alguma
mudança.

clean.sh é usado para limpar os arquivos que foram gerados pelo autobuild.sh.

E o build_dist.sh, gera um pacote .tar.bz2 com a versão do documento em pdf,
dvi e ps.

