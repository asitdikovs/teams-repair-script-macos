This script is designed for macOS devices to help resolve Microsoft Teams issues by automatically closing Teams and deleting its cache and data folders. It is suitable for use with any MDM solution.

## What the Script Does

- Closes Microsoft Teams if it is running.
- Deletes Teams cache and data directories from the user's Library.
- Helps resolve common Teams problems by forcing a clean start.

## Usage with Jamf

1. **Upload the Script:**

   - Go to **Settings > Computer Management > Scripts** in Jamf.
   - Upload the `fix_ms_teams.sh` script. Default settings are sufficient.

2. **Create a Policy:**

   - Navigate to **Computers > Policies**.
   - Click **New** to create a new policy.
   - In the **General** section, give your policy a descriptive name (e.g., "Repair Microsoft Teams").

3. **Add the Script:**

   - In the policy, go to the **Scripts** payload.
   - Add the uploaded script to the policy.

4. **Set Scope:**

   - Set the scope to **All Computers** or target specific groups as needed.

5. **Self Service (Recommended):**
   - Add the policy to **Self Service** so users can run the repair themselves when needed.

## Notes

- Teams will need to be re-launched after running the script.
- Use with caution: all Teams cache and data will be deleted for the user.
