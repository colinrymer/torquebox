class SimpleService
  def initialize
    @version = 'INITIAL'
    @response_queue = TorqueBox.fetch( '/queue/service_response' )
  end

  def start
    @response_queue.publish( @version ) unless @version == 'INITIAL'
  end

  def stop
  end
end
