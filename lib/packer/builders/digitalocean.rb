module Packer
  class Builder
    # @see https://www.packer.io/docs/builders/digitalocean.html
    class DigitalOcean < Builder
      def initialize
        super
        data['type'] = DIGITALOCEAN
        add_required(
          'api_token',
        )
      end

      def api_token(token)
        __add_string('api_token', token)
      end

      def api_url(url)
        __add_string('api_url', url)
      end

      def droplet_name(name)
        __add_string('droplet_name', name)
      end

      def image(slug)
        __add_string('image', slug)
      end

      def image_id(id)
        __add_integer('image_id', id)
      end

      def private_networking(bool)
        __add_boolean('private_networking', bool)
      end

      def region(name)
        __add_string('region', name)
      end

      def region_id(id)
        __add_integer('region_id', id)
      end

      def size(slug)
        __add_string('size', slug)
      end

      def size_id(id)
        __add_integer('size_id', id)
      end

      def snapshot_name(slug)
        __add_string('snapshot_name', slug)
      end

      def ssh_username(username)
        __add_string('ssh_username', username)
      end

      def state_timeout(timeout)
        __add_string('state_timeout', timeout)
      end
    end
  end
end
