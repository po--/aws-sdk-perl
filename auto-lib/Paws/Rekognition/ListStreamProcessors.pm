
package Paws::Rekognition::ListStreamProcessors;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreamProcessors');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::ListStreamProcessorsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListStreamProcessors - Arguments for method ListStreamProcessors on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStreamProcessors on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method ListStreamProcessors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStreamProcessors.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $ListStreamProcessorsResponse = $rekognition->ListStreamProcessors(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListStreamProcessorsResponse->NextToken;
    my $StreamProcessors = $ListStreamProcessorsResponse->StreamProcessors;

    # Returns a L<Paws::Rekognition::ListStreamProcessorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/ListStreamProcessors>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of stream processors you want Rekognition Video to
return in the response. The default is 1000.



=head2 NextToken => Str

If the previous response was incomplete (because there are more stream
processors to retrieve), Rekognition Video returns a pagination token
in the response. You can use this pagination token to retrieve the next
set of stream processors.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStreamProcessors in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

