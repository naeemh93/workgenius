

MANDRILL_APP_CONFIG = YAML.load(ERB.new(IO.read("#{"#{Rails.root}"}/config/mandrill.yml")).result)[Rails.env]
