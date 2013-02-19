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

% Identificação da classe
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tccbsi}[2013/02/19 v0.1 TCC BSI]

% Declaração das opções da classe
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}
\ProcessOptions\relax

% Classe principal e carregamento de pacotes
\LoadClass[12pt,oneside,a4paper,article]{abntex2}

\RequirePackage{mathptmx}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[brazil]{babel}
\RequirePackage{indentfirst}

% Redefinição do modelo base do abnTeX2 e algumas configurações usadas pelo BSI
\setlength{\parindent}{2cm}

\renewcommand{\thechapter}{}
\renewcommand{\thesection}{\arabic{section}.}
\renewcommand{\thesubsection}{\thesection\arabic{subsection}.}
\renewcommand{\thesubsubsection}{\thesubsection\arabic{subsubsection}.}

\renewcommand{\ABNTEXchapterfont}{\bfseries\fontfamily{\familydefault}\selectfont}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}
\renewcommand{\ABNTEXsectionfont}{\bfseries\fontfamily{\familydefault}\fontseries{\familydefault}\selectfont}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}
