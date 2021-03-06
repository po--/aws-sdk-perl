
package Paws::Pricing::GetProducts;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Pricing::Filter]');
  has FormatVersion => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceCode => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProducts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pricing::GetProductsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pricing::GetProducts - Arguments for method GetProducts on L<Paws::Pricing>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProducts on the
L<AWS Price List Service|Paws::Pricing> service. Use the attributes of this class
as arguments to method GetProducts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProducts.

=head1 SYNOPSIS

    my $api.pricing = Paws->service('Pricing');
    my $GetProductsResponse = $api . pricing->GetProducts(
      Filters => [
        {
          Field => 'MyString',
          Type  => 'TERM_MATCH',    # values: TERM_MATCH
          Value => 'MyString',

        },
        ...
      ],                            # OPTIONAL
      FormatVersion => 'MyString',  # OPTIONAL
      MaxResults    => 1,           # OPTIONAL
      NextToken     => 'MyString',  # OPTIONAL
      ServiceCode   => 'MyString',  # OPTIONAL
    );

    # Results:
    my $FormatVersion = $GetProductsResponse->FormatVersion;
    my $NextToken     = $GetProductsResponse->NextToken;
    my $PriceList     = $GetProductsResponse->PriceList;

    # Returns a L<Paws::Pricing::GetProductsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/account-billing/>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::Pricing::Filter>]

The list of filters that limit the returned products. only products
that match all filters are returned.



=head2 FormatVersion => Str

The format version that you want the response to be in.

Valid values are: C<aws_v1>



=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

The pagination token that indicates the next set of results that you
want to retrieve.



=head2 ServiceCode => Str

The code for the service whose products you want to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProducts in L<Paws::Pricing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

