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
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax

% Classe principal e carregamento de pacotes.
\LoadClass[12pt,oneside,a4paper,article]{memoir}

% Define a fonte para Times New Roman.
\RequirePackage{mathptmx}

% Define a codificação e linguagem usada no arquivo de texto.
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[brazil]{babel}

% Sempre aplica o recuo do paragrafo.
\RequirePackage{indentfirst}

% Define a formatação da página Esquerda, Direita, Superior, Inferior
% (3cm, 2cm, 3cm, 2cm).
\setlrmarginsandblock{3cm}{2cm}{*}
\setulmarginsandblock{3cm}{2cm}{*}
\checkandfixthelayout

% Formatação simples do texto (1.5).
\setSpacing{1.45}

% Formatação do recuo do parágrafo.
\setlength{\parindent}{2cm}

% Profundidade do contador de seções, subseções, etc.
\setsecnumdepth{subparagraph}
\settocdepth{subparagraph}

% Formatação do contador dos capítulos, seções, subseções, etc.
\renewcommand{\thechapter}{} % Ignora o capítulo.
\renewcommand{\thesection}{\arabic{section}.}
\renewcommand{\thesubsection}{\thesection\arabic{subsection}.}
\renewcommand{\thesubsubsection}{\thesubsection\arabic{subsubsection}.}
\renewcommand{\theparagraph}{\thesubsubsection\arabic{paragraph}.}
\renewcommand{\thesubparagraph}{\theparagraph\arabic{subparagraph}.}

% Espaçamento das seções para o texto.
\setaftersecskip{\onelineskip}
\setaftersubsecskip{\onelineskip}
\setaftersubsubsecskip{\onelineskip}
\setafterparaskip{\onelineskip}
\setaftersubparaskip{\onelineskip}

% Espaçamento entre paragrafos.
\setlength{\parskip}{\lineskip}

% Formatação das seções, subseções, etc.
\setsecheadstyle{\normalsize\bfseries\raggedright\MakeUppercase}
\setsubsecheadstyle{\normalsize\raggedright}
\setsubsubsecheadstyle{\normalsize\raggedright}
\setparaheadstyle{\normalsize\raggedright}
\setsubparaheadstyle{\normalsize\raggedright}
\setsubparaindent{\paraindent}

% Define a numeração da página para o topo direito.
\pagestyle{myheadings}
