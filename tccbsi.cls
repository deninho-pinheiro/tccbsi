%
% Copyright 2013 Emerson Max de Medeiros Silva
%
% This file is part of tccbsi.
%
% tccbsi is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% tccbsi is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with tccbsi.  If not, see <http://www.gnu.org/licenses/>.
%

% Identificação da classe.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tccbsi}[2013/02/19 v0.1 TCC BSI]

% Declaração das opções da classe.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}
\ProcessOptions\relax

% Classe principal e carregamento de pacotes
\LoadClass[12pt,oneside,a4paper,article]{abntex2}

\RequirePackage{mathptmx}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[brazil]{babel}
\RequirePackage{indentfirst}

% Adição de alguns comandos para a capa
\providecommand{\imprimircentro}{}
\newcommand{\centro}[1]{\renewcommand{\imprimircentro}{#1}}

\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

\providecommand{\imprimircurso}{}
\newcommand{\curso}[1]{\renewcommand{\imprimircurso}{#1}}

% Definindo alguns macros com um valor padrão
\local{Caicó -- RN}
\instituicao{UNIVERSIDADE FEDERAL DO RIO GRANDE DO NORTE}
\centro{CENTRO DE ENSINO SUPERIOR DO SERIDÓ}
\departamento{DEPARTAMENTO DE CIÊNCIAS EXATAS E APLICADAS}
\curso{PROGRAMA DE GRADUAÇÃO EM SISTEMAS DE INFORMAÇÃO}

% Redefinição do modelo base do abnTeX2 e algumas configurações usadas pelo BSI.
% =============================================================================

% Tamanho do recuo do paragrafo.
\setlength{\parindent}{2cm}

% Redefinindo a pontuação das seções e subseções.
\renewcommand{\thechapter}{}
\renewcommand{\thesection}{\arabic{section}.}
\renewcommand{\thesubsection}{\thesection\arabic{subsection}.}
\renewcommand{\thesubsubsection}{\thesubsection\arabic{subsubsection}.}

% Definindo espaçamento padrão para 1.5cm
\OnehalfSpacing
\setSpacing{1.45}

% Redefinindo tamanho e formato da fonte para o comando \section, \subsection,
% etc.
\renewcommand{\ABNTEXchapterfont}{\bfseries\fontfamily{\familydefault}\selectfont}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}
\renewcommand{\ABNTEXsectionfont}{\bfseries\fontfamily{\familydefault}\fontseries{\familydefault}\selectfont}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

% Redefine a capa padrão do abnTeX2
%\renewenvironment{capa}{\begin{titlingpage}}{\end{titlingpage}}
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
    \includegraphics[width=0.15\textwidth]{image/brasao_ufrn}\\
    {\imprimirinstituicao}\\
    {\imprimircentro}\\
    {\imprimirdepartamento}\\
    {\imprimircurso}\\
    \vspace*{3cm}
    {\imprimirautor}\\
    \vspace*{3.5cm}
    {\ABNTEXchapterfont\imprimirtitulo}
    \vspace*{\fill}

    {\imprimirlocal}
    \par
    {\imprimirdata}
  \end{capa}
}

% Redefine a folha de rosto padrão do abnTeX2
\makeatletter
\renewcommand{\folhaderostocontent}{
  \begin{center}

    \vspace*{0.08cm}
    {\imprimirautor}

    \vspace*{\fill}\vspace*{\fill}
    {\ABNTEXchapterfont\imprimirtitulo}
    \vspace*{\fill}

    \abntex@ifnotempty{\imprimirpreambulo}{%
      \hspace{.45\textwidth}
      \begin{minipage}{.5\textwidth}
         \imprimirpreambulo\\

         {\ABNTEXchapterfont\imprimirorientadorRotulo\ABNTEXsectionfont~\imprimirorientador\par}
         \abntex@ifnotempty{\imprimircoorientador}{%
            {\ABNTEXchapterfont\imprimircoorientadorRotuloo\ABNTEXsectionfont~\imprimircoorientador}%
         }%
       \end{minipage}%
       \vspace*{\fill}
    }%

    \vspace*{\fill}

    {\imprimirlocal}
    \par
    {\imprimirdata}

  \end{center}
}
\makeatother

