[
  inputs: ["mix.exs", "{config,lib,test}/**/*.{ex,exs}"],
  locals_without_parens: [
    # Kernel
    inspect: 1,
    inspect: 2,

    # Phoenix
    plug: 1,
    plug: 2,
    action_fallback: 1,
    render: 2,
    render: 3,
    render: 4,
    redirect: 2,
    socket: :*,
    get: :*,
    put: :*,
    post: :*,
    resources: :*,
    pipe_through: :*,
    delete: :*,
    forward: :*,
    channel: :*,
    transport: :*,

    # Distillery
    set: 1
  ]
