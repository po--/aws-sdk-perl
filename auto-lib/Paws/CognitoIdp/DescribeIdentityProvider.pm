
package Paws::CognitoIdp::DescribeIdentityProvider;
  use Moose;
  has ProviderName => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIdentityProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::DescribeIdentityProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::DescribeIdentityProvider - Arguments for method DescribeIdentityProvider on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeIdentityProvider on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method DescribeIdentityProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeIdentityProvider.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $DescribeIdentityProviderResponse =
      $cognito -idp->DescribeIdentityProvider(
      ProviderName => 'MyProviderNameType',
      UserPoolId   => 'MyUserPoolIdType',

      );

    # Results:
    my $IdentityProvider = $DescribeIdentityProviderResponse->IdentityProvider;

    # Returns a L<Paws::CognitoIdp::DescribeIdentityProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/DescribeIdentityProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProviderName => Str

The identity provider name.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeIdentityProvider in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

