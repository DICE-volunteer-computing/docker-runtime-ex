import os
import json
import datetime

if __name__ == '__main__':
    # For the purposes of this runtime, we look at the first file that is provided in the
    # input directory
    filename = os.listdir("input")[0]

    # We read the data in this input file
    with open(f"input/{filename}", "r") as f:
        data = json.load(f)
    input_id = data["input_id"]

    # We complete our execution
    with open("output/output.json", 'w+') as f:
        output_data = f"Completed task #{input_id} at {datetime.datetime.utcnow().strftime('%A, %B %e, %Y %r')}"

        json.dump({
            "message": output_data
        }, f)