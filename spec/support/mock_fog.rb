Fog.mock!

connection = ::Fog::Storage.new(
        aws_access_key_id:       ENV["AWS_ACCESS_KEY_ID"],
        aws_secret_access_key:   ENV["AWS_SECRET_ACCESS_KEY"],
        provider:                "AWS",
        region:                  "us-east-1"
      )

connection.directories.create(key: ENV['S3_BUCKET'])
ENV['S3_BUCKET']
