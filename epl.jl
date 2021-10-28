println("Hello EPL")

mutable struct Executor
    num_sensors::Int
    mc_values::Vector{Int64}
    gc_stored_odors::Vector{Vector{Int64}}
    mc_to_gc_fanin::Int
    max_test_iters::Int
    minority_vote_ratio::Float16
end

ex = Executor(72, [], [[]], 7, 3, 0.03)
print(typeof(ex.gc_stored_odors))