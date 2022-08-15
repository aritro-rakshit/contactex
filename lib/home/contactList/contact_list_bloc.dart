import 'package:contactex/home/contactList/contact_list_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:contactex/home/contactList/contact_list_repo.dart';

class ContactListEvent {
  @override
  List<Object> get props => [];
}

class ContactListState {
  @override
  List<Object> get props => [];
}

class FetchContactEvent extends ContactListEvent {
}

class AddContactEvent extends ContactListEvent {
}

class ContactAddedState extends ContactListState {
}

class ContactFetchedState extends ContactListState {
}


class ContactListBloc extends Bloc<ContactListEvent, ContactListState> {
  ContactListRepo _repo;
  ContactListBloc(this._repo) : super(ContactListState());

  @override
  ContactListState get initialState => ContactListState();

  @override
  Stream<ContactListState> mapEventToState(ContactListEvent event) async* {
    if (event is FetchContactEvent) {
      yield ContactFetchedState();
    }
  }
}