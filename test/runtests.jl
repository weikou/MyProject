using MyProject
using Suppressor
import Documenter as doc
using Test


@testset "MyProject" begin
    @test MyProject.greet() == "Hello World!"
    @test length(MyProject.greet_alien()) == 14
end

doc.DocMeta.setdocmeta!(MyProject, :DocTestSetup, :(using MyProject); recursive=true)

@testset "MyProject_Doctests" begin
    doc.doctest(MyProject)
end

