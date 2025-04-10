threads_count = ENV.fetch("RAILS_MAX_THREADS", 3)
threads threads_count, threads_count

# Fly.io requires listening on 0.0.0.0 and port 8080
port ENV.fetch("PORT", 8080)
bind "tcp://0.0.0.0:#{ENV.fetch("PORT", 8080)}"

# Allow puma to be restarted by `bin/rails restart` command
plugin :tmp_restart

# Run the Solid Queue supervisor inside of Puma
plugin :solid_queue if ENV["SOLID_QUEUE_IN_PUMA"]

# Specify the PID file if requested
pidfile ENV["PIDFILE"] if ENV["PIDFILE"]
