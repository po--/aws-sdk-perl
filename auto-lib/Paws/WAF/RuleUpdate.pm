package Paws::WAF::RuleUpdate;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has Predicate => (is => 'ro', isa => 'Paws::WAF::Predicate', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::RuleUpdate

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::RuleUpdate object:

  $service_obj->Method(Att1 => { Action => $value, ..., Predicate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::RuleUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 ATTRIBUTES

=head2 B<REQUIRED> Action => Str

  Specify C<INSERT> to add a C<Predicate> to a C<Rule>. Use C<DELETE> to
remove a C<Predicate> from a C<Rule>.

=head2 B<REQUIRED> Predicate => L<Paws::WAF::Predicate>

  The ID of the C<Predicate> (such as an C<IPSet>) that you want to add
to a C<Rule>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
