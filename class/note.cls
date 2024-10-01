\ProvidesClass{note}[]

\LoadClass[11pt]{article}

\usepackage[a4paper, top=1cm, bottom=1.6cm, left=1cm, right=1cm]{geometry}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\usepackage{note}