
package Paws::Neptune::CreateDBParameterGroup;
  use Moose;
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::CreateDBParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBParameterGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::CreateDBParameterGroup - Arguments for method CreateDBParameterGroup on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBParameterGroup on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method CreateDBParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBParameterGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $CreateDBParameterGroupResult = $rds->CreateDBParameterGroup(
      DBParameterGroupFamily => 'MyString',
      DBParameterGroupName   => 'MyString',
      Description            => 'MyString',
      Tags                   => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DBParameterGroup = $CreateDBParameterGroupResult->DBParameterGroup;

    # Returns a L<Paws::Neptune::CreateDBParameterGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBParameterGroupFamily => Str

The DB parameter group family name. A DB parameter group can be
associated with one and only one DB parameter group family, and can be
applied only to a DB instance running a database engine and engine
version compatible with that DB parameter group family.



=head2 B<REQUIRED> DBParameterGroupName => Str

The name of the DB parameter group.

Constraints:

=over

=item *

Must be 1 to 255 letters, numbers, or hyphens.

=item *

First character must be a letter

=item *

Cannot end with a hyphen or contain two consecutive hyphens

=back

This value is stored as a lowercase string.



=head2 B<REQUIRED> Description => Str

The description for the DB parameter group.



=head2 Tags => ArrayRef[L<Paws::Neptune::Tag>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBParameterGroup in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

