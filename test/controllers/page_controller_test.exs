defmodule ActualEdlabDemo.PageControllerTest do
  use ActualEdlabDemo.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert conn.resp_body =~ "Welcome to Phoenix!"
  end
end
