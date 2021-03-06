package Paws::AlexaForBusiness::Room;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ProfileArn => (is => 'ro', isa => 'Str');
  has ProviderCalendarId => (is => 'ro', isa => 'Str');
  has RoomArn => (is => 'ro', isa => 'Str');
  has RoomName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::Room

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::Room object:

  $service_obj->Method(Att1 => { Description => $value, ..., RoomName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::Room object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

A room with attributes.

=head1 ATTRIBUTES


=head2 Description => Str

  The description of a room.


=head2 ProfileArn => Str

  The profile ARN of a room.


=head2 ProviderCalendarId => Str

  The provider calendar ARN of a room.


=head2 RoomArn => Str

  The ARN of a room.


=head2 RoomName => Str

  The name of a room.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

