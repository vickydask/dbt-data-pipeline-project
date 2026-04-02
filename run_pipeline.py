import subprocess

def run_command(command):
    print(f"\nRunning: {command}")
    
    result = subprocess.run(command, shell=True)
    
    if result.returncode != 0:
        print(f"Error while running: {command}")
        exit(1)

# Step 1: load data
run_command("dbt seed")

# Step 2: run transformations
run_command("dbt run")

# Step 3: run tests
run_command("dbt test")

print("\nPipeline completed successfully!")