Introdução
=========

A classe tccbsi é um modelo LaTeX para o TCC do curso de BSI.

Dependências
=========

O modelo depende do memoir, que provavelmente já vem instalado com sua
distribuição do LaTeX.
Instalação
=========

Simplesmente copie o arquivo tccbsi.cls para a pasta onde está seu documento
LaTeX.

Uso
=========

Para usar a classe tccbsi, ibasta definir a documentclass com a classe
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

