if RUBY_VERSION>='2.6.0'
  if Rails.version < '5'
    class ActionController::TestResponse < ActionDispatch::TestResponse
        def recycle
            @mon_mutext_owner_object_id = nil
            @mon_mutext = nil
            initialize
        end
    end
  else
    puts "Monkeypatch for ActionController::TestResponse no longer needed"
  end
end
