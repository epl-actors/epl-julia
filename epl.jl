println("Hello EPL")

@Base.kwdef mutable struct Executor
    num_sensors::Int = 72
    mc_values::Vector{Int64} = []
    gc_stored_odors::Vector{Vector{Int64}} = [[]]
    mc_to_gc_fanin::Int
    max_test_iters::Int
    minority_vote_ratio::Float16
end

exec = Executor(num_sensors=72, mc_to_gc_fanin=7, max_test_iters=3, minority_vote_ratio=0.03)
# print(typeof(exec.gc_stored_odors))

function train(exec::Executor, train_data)
    exec.gc_stored_odors = train_data
end

train_data = [[3, 4, 5], [7, 8, 9], [2, 4, 6]]
train(exec, train_data)
println("stored odors: ", exec.gc_stored_odors)
println("num_sensors: $(exec.num_sensors)")