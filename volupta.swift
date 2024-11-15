// Example struct representing a configuration
struct Configuration {
    var name: String
    var isEnabled: Bool
}

// Function to update configuration based on another configuration
func updateConfiguration(_ original: Configuration, with update: Configuration) -> Configuration {
    // Ensure no recursion is involved, just overwrite the original with update
    return Configuration(name: update.name, isEnabled: update.isEnabled)
}

// Example usage:
let originalConfig = Configuration(name: "AppConfig", isEnabled: true)
let updateConfig = Configuration(name: "UpdatedConfig", isEnabled: false)

let updatedConfig = updateConfiguration(originalConfig, with: updateConfig)
print(updatedConfig) // Output: Configuration(name: "UpdatedConfig", isEnabled: false)
