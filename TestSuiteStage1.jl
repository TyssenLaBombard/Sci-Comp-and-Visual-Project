using .DataFit
using Test

    @testset "Legal Point2D" begin
        @test isa(Point2D(1,2),Point2D)
        @test isa(Point2D(1.0,2.0),Point2D)
        
    end 
    
    @testset "Legal XYData" begin
        @test isa(XYData([1,2,3],[4,5,6]),XYData)
        @test_throws ArgumentError XYData([1,2,3,4],[5,6,7])
    end 

    @testset "legal XYData Tuple" begin
        @test isa(XYData([(1,2), (4,2), (6,7)]),XYData)
    
    end 
    @testset "Legal XYData Types" begin
        @test isa(XYData([1.0,2,3],[4,5,6]),XYData)
        @test_throws MethodError XYData(1.0,2,3),(1//1,5,6)
    end 
    