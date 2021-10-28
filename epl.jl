println("Hello EPL")

mutable struct Executor
    num_sensors::Int
    mc_values::Vector{Int64}
    gc_stored_odors::Vector{Vector{Int64}}
    mc_to_gc_fanin::Int
    max_test_iters::Int
    minority_vote_ratio::Float16
end

exec = Executor(72, [], [[]], 7, 3, 0.03)
# print(typeof(exec.gc_stored_odors))

function train(exec::Executor, train_data)
    exec.gc_stored_odors = train_data
end

train_data = [[3, 4, 5], [7, 8, 9], [2, 4, 6]]
train(exec, train_data)
print("stored odors: ", exec.gc_stored_odors)