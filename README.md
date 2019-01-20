# ignition-sample

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