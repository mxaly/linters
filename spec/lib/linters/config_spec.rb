require "linters/config"

describe Linters::Config do
  describe "#to_yaml" do
    it "returns a merged config" do
      content = <<~EOL
        linters:
          AltText:
            enabled: true
      EOL
      config = Linters::Config.new(
        content: content,
        default_config_path: "config/scss.yml",
      )

      result = config.to_yaml

      expect(result).to include(content)
    end
  end
end
