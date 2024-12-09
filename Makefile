# Makefile

# The default target is 'linux', which runs the 'linux.sh' script
linux: clean
	./bin/linux.sh

# The clean target runs the 'cleanup.sh' script to undo changes
clean:
	./bin/cleanup.sh

# Add execute permissions to the .sh scripts before running
chmod:
	chmod +x ./bin/linux.sh ./bin/cleanup.sh
