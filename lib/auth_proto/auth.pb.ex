defmodule AuthProto.AuthResponse.Status do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SUCCESS | :ERROR
  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.EnumDescriptorProto.decode(
      <<10, 6, 83, 116, 97, 116, 117, 115, 18, 11, 10, 7, 83, 85, 67, 67, 69, 83, 83, 16, 0, 18,
        9, 10, 5, 69, 82, 82, 79, 82, 16, 64>>
    )
  end

  field :SUCCESS, 0
  field :ERROR, 64
end

defmodule AuthProto.VerifyResponse.Status do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SUCCESS | :ERROR
  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.EnumDescriptorProto.decode(
      <<10, 6, 83, 116, 97, 116, 117, 115, 18, 11, 10, 7, 83, 85, 67, 67, 69, 83, 83, 16, 0, 18,
        9, 10, 5, 69, 82, 82, 79, 82, 16, 64>>
    )
  end

  field :SUCCESS, 0
  field :ERROR, 64
end

defmodule AuthProto.RefreshResponse.Status do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SUCCESS | :ERROR
  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.EnumDescriptorProto.decode(
      <<10, 6, 83, 116, 97, 116, 117, 115, 18, 11, 10, 7, 83, 85, 67, 67, 69, 83, 83, 16, 0, 18,
        9, 10, 5, 69, 82, 82, 79, 82, 16, 64>>
    )
  end

  field :SUCCESS, 0
  field :ERROR, 64
end

defmodule AuthProto.PingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: String.t()
        }
  defstruct [:payload]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 11, 80, 105, 110, 103, 82, 101, 113, 117, 101, 115, 116, 18, 24, 10, 7, 112, 97, 121,
        108, 111, 97, 100, 24, 1, 32, 1, 40, 9, 82, 7, 112, 97, 121, 108, 111, 97, 100>>
    )
  end

  field :payload, 1, type: :string
end

defmodule AuthProto.PingResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: String.t()
        }
  defstruct [:payload]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 12, 80, 105, 110, 103, 82, 101, 115, 112, 111, 110, 115, 101, 18, 24, 10, 7, 112, 97,
        121, 108, 111, 97, 100, 24, 1, 32, 1, 40, 9, 82, 7, 112, 97, 121, 108, 111, 97, 100>>
    )
  end

  field :payload, 1, type: :string
end

defmodule AuthProto.AuthRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          username: String.t(),
          password: String.t()
        }
  defstruct [:username, :password]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 11, 65, 117, 116, 104, 82, 101, 113, 117, 101, 115, 116, 18, 26, 10, 8, 117, 115, 101,
        114, 110, 97, 109, 101, 24, 1, 32, 1, 40, 9, 82, 8, 117, 115, 101, 114, 110, 97, 109, 101,
        18, 26, 10, 8, 112, 97, 115, 115, 119, 111, 114, 100, 24, 2, 32, 1, 40, 9, 82, 8, 112, 97,
        115, 115, 119, 111, 114, 100>>
    )
  end

  field :username, 1, type: :string
  field :password, 2, type: :string
end

defmodule AuthProto.AuthResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rt: String.t(),
          at: String.t(),
          status: AuthProto.AuthResponse.Status.t()
        }
  defstruct [:rt, :at, :status]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 12, 65, 117, 116, 104, 82, 101, 115, 112, 111, 110, 115, 101, 18, 14, 10, 2, 114, 116,
        24, 1, 32, 1, 40, 9, 82, 2, 114, 116, 18, 14, 10, 2, 97, 116, 24, 2, 32, 1, 40, 9, 82, 2,
        97, 116, 18, 55, 10, 6, 115, 116, 97, 116, 117, 115, 24, 12, 32, 1, 40, 14, 50, 31, 46,
        97, 117, 116, 104, 95, 112, 114, 111, 116, 111, 46, 65, 117, 116, 104, 82, 101, 115, 112,
        111, 110, 115, 101, 46, 83, 116, 97, 116, 117, 115, 82, 6, 115, 116, 97, 116, 117, 115,
        34, 32, 10, 6, 83, 116, 97, 116, 117, 115, 18, 11, 10, 7, 83, 85, 67, 67, 69, 83, 83, 16,
        0, 18, 9, 10, 5, 69, 82, 82, 79, 82, 16, 64>>
    )
  end

  field :rt, 1, type: :string
  field :at, 2, type: :string
  field :status, 12, type: AuthProto.AuthResponse.Status, enum: true
end

defmodule AuthProto.VerifyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          at: String.t()
        }
  defstruct [:at]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 13, 86, 101, 114, 105, 102, 121, 82, 101, 113, 117, 101, 115, 116, 18, 14, 10, 2, 97,
        116, 24, 1, 32, 1, 40, 9, 82, 2, 97, 116>>
    )
  end

  field :at, 1, type: :string
end

defmodule AuthProto.VerifyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ok: boolean,
          status: AuthProto.VerifyResponse.Status.t()
        }
  defstruct [:ok, :status]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 14, 86, 101, 114, 105, 102, 121, 82, 101, 115, 112, 111, 110, 115, 101, 18, 14, 10, 2,
        111, 107, 24, 1, 32, 1, 40, 8, 82, 2, 111, 107, 18, 57, 10, 6, 115, 116, 97, 116, 117,
        115, 24, 12, 32, 1, 40, 14, 50, 33, 46, 97, 117, 116, 104, 95, 112, 114, 111, 116, 111,
        46, 86, 101, 114, 105, 102, 121, 82, 101, 115, 112, 111, 110, 115, 101, 46, 83, 116, 97,
        116, 117, 115, 82, 6, 115, 116, 97, 116, 117, 115, 34, 32, 10, 6, 83, 116, 97, 116, 117,
        115, 18, 11, 10, 7, 83, 85, 67, 67, 69, 83, 83, 16, 0, 18, 9, 10, 5, 69, 82, 82, 79, 82,
        16, 64>>
    )
  end

  field :ok, 1, type: :bool
  field :status, 12, type: AuthProto.VerifyResponse.Status, enum: true
end

defmodule AuthProto.RefreshRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rt: String.t()
        }
  defstruct [:rt]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 14, 82, 101, 102, 114, 101, 115, 104, 82, 101, 113, 117, 101, 115, 116, 18, 14, 10, 2,
        114, 116, 24, 1, 32, 1, 40, 9, 82, 2, 114, 116>>
    )
  end

  field :rt, 1, type: :string
end

defmodule AuthProto.RefreshResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rt: String.t(),
          at: String.t(),
          status: AuthProto.RefreshResponse.Status.t()
        }
  defstruct [:rt, :at, :status]

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.DescriptorProto.decode(
      <<10, 15, 82, 101, 102, 114, 101, 115, 104, 82, 101, 115, 112, 111, 110, 115, 101, 18, 14,
        10, 2, 114, 116, 24, 1, 32, 1, 40, 9, 82, 2, 114, 116, 18, 14, 10, 2, 97, 116, 24, 2, 32,
        1, 40, 9, 82, 2, 97, 116, 18, 58, 10, 6, 115, 116, 97, 116, 117, 115, 24, 12, 32, 1, 40,
        14, 50, 34, 46, 97, 117, 116, 104, 95, 112, 114, 111, 116, 111, 46, 82, 101, 102, 114,
        101, 115, 104, 82, 101, 115, 112, 111, 110, 115, 101, 46, 83, 116, 97, 116, 117, 115, 82,
        6, 115, 116, 97, 116, 117, 115, 34, 32, 10, 6, 83, 116, 97, 116, 117, 115, 18, 11, 10, 7,
        83, 85, 67, 67, 69, 83, 83, 16, 0, 18, 9, 10, 5, 69, 82, 82, 79, 82, 16, 64>>
    )
  end

  field :rt, 1, type: :string
  field :at, 2, type: :string
  field :status, 12, type: AuthProto.RefreshResponse.Status, enum: true
end

defmodule AuthProto.Auth.Service do
  @moduledoc false
  use GRPC.Service, name: "auth_proto.Auth"

  def descriptor do
    # credo:disable-for-next-line
    Elixir.Google.Protobuf.ServiceDescriptorProto.decode(
      <<10, 4, 65, 117, 116, 104, 18, 66, 10, 4, 80, 105, 110, 103, 18, 23, 46, 97, 117, 116, 104,
        95, 112, 114, 111, 116, 111, 46, 80, 105, 110, 103, 82, 101, 113, 117, 101, 115, 116, 26,
        24, 46, 97, 117, 116, 104, 95, 112, 114, 111, 116, 111, 46, 80, 105, 110, 103, 82, 101,
        115, 112, 111, 110, 115, 101, 34, 3, 136, 2, 0, 40, 0, 48, 0, 18, 66, 10, 4, 65, 117, 116,
        104, 18, 23, 46, 97, 117, 116, 104, 95, 112, 114, 111, 116, 111, 46, 65, 117, 116, 104,
        82, 101, 113, 117, 101, 115, 116, 26, 24, 46, 97, 117, 116, 104, 95, 112, 114, 111, 116,
        111, 46, 65, 117, 116, 104, 82, 101, 115, 112, 111, 110, 115, 101, 34, 3, 136, 2, 0, 40,
        0, 48, 0, 18, 72, 10, 6, 86, 101, 114, 105, 102, 121, 18, 25, 46, 97, 117, 116, 104, 95,
        112, 114, 111, 116, 111, 46, 86, 101, 114, 105, 102, 121, 82, 101, 113, 117, 101, 115,
        116, 26, 26, 46, 97, 117, 116, 104, 95, 112, 114, 111, 116, 111, 46, 86, 101, 114, 105,
        102, 121, 82, 101, 115, 112, 111, 110, 115, 101, 34, 3, 136, 2, 0, 40, 0, 48, 0, 18, 75,
        10, 7, 82, 101, 102, 114, 101, 115, 104, 18, 26, 46, 97, 117, 116, 104, 95, 112, 114, 111,
        116, 111, 46, 82, 101, 102, 114, 101, 115, 104, 82, 101, 113, 117, 101, 115, 116, 26, 27,
        46, 97, 117, 116, 104, 95, 112, 114, 111, 116, 111, 46, 82, 101, 102, 114, 101, 115, 104,
        82, 101, 115, 112, 111, 110, 115, 101, 34, 3, 136, 2, 0, 40, 0, 48, 0>>
    )
  end

  rpc :Ping, AuthProto.PingRequest, AuthProto.PingResponse
  rpc :Auth, AuthProto.AuthRequest, AuthProto.AuthResponse
  rpc :Verify, AuthProto.VerifyRequest, AuthProto.VerifyResponse
  rpc :Refresh, AuthProto.RefreshRequest, AuthProto.RefreshResponse
end

defmodule AuthProto.Auth.Stub do
  @moduledoc false
  use GRPC.Stub, service: AuthProto.Auth.Service
end
