using MyProject
using Documenter

DocMeta.setdocmeta!(MyProject, :DocTestSetup, :(using MyProject); recursive=true)

makedocs(;
    modules=[MyProject],
    authors="Wiebke Scholz wiebke.scholz@uibk.ac.at",
    repo="https://github.com/weikou/MyProject.jl/blob/{commit}{path}#{line}",
    sitename="MyProject.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://weikou.github.io/MyProject.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/weikou/MyProject.jl",
    devbranch="main",
)
