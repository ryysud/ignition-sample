# ignition-sample

This is a repository to understand ignition.

## Requirements

- VirtualBox
- Vagrant
- Config Transpiler
- vagrant-ignition

## Usage

Edit Container Linux Config file.

```bash
$ vim cl-config/cl-config.yaml
```

Generate Ignition config file with ct.

```bash
$ bash scripts/config_transpile.sh
```

Run Container Linux VM

```bash
$ vagrant up
```

## Note

I created Vagranfile based on [coreos/coreos-vagrant](https://github.com/coreos/coreos-vagrant) .

The diff in code is below.

```diff
# Around line 27
- $update_channel = "alpha"
+ $update_channel = "stable"

# Around line 168
config.vm.provider :virtualbox do |vb|
    config.ignition.hostname = vm_name
    config.ignition.drive_name = "config" + i.to_s
    # when the ignition config doesn't exist, the plugin automatically generates a very basic Ignition with the ssh key
    # and previously specified options (ip and hostname). Otherwise, it appends those to the provided config.ign below
-     if File.exist?(IGNITION_CONFIG_PATH)
-         config.ignition.path = 'config.ign'
-     end
+    # if File.exist?(IGNITION_CONFIG_PATH)
+        # config.ignition.path = 'config.ign'
+    # end
+    config.ignition.path = 'cl-config/ignition-config.json'
end
```
