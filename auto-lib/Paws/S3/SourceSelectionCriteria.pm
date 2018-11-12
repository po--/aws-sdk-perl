package Paws::S3::SourceSelectionCriteria;
  use Moose;
  has SseKmsEncryptedObjects => (is => 'ro', isa => 'Paws::S3::SseKmsEncryptedObjects');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::SourceSelectionCriteria

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::SourceSelectionCriteria object:

  $service_obj->Method(Att1 => { SseKmsEncryptedObjects => $value, ..., SseKmsEncryptedObjects => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::SourceSelectionCriteria object:

  $result = $service_obj->Method(...);
  $result->Att1->SseKmsEncryptedObjects

=head1 DESCRIPTION

Container for filters that define which source objects should be
replicated.

=head1 ATTRIBUTES


=head2 SseKmsEncryptedObjects => L<Paws::S3::SseKmsEncryptedObjects>

  Container for filter information of selection of KMS Encrypted S3
objects. The element is required if you include
C<SourceSelectionCriteria> in the replication configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

