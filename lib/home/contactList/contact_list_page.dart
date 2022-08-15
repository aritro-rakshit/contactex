import 'package:contactex/home/contactList/contact_list_bloc.dart';
import 'package:contactex/home/contactList/contact_list_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({Key? key}) : super(key: key);

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  ContactListRepo contactListRepo = ContactListRepo.instance;
  late ContactListBloc contactListBloc;
  @override
  void initState() {
    super.initState();
    contactListBloc = ContactListBloc(contactListRepo);
  }
  @override
  Widget build(BuildContext context) {
   return BlocProvider(
      create: (context) {
        contactListBloc.add(FetchContactEvent());
        return contactListBloc;
      },
      child: BlocConsumer<ContactListBloc, ContactListState>(
        builder: (context, state) {
          return InkWell(
            onTap: (){
              contactListBloc.add(FetchContactEvent());
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
          );
        },
        listener: (context, state) {
         if(state is ContactFetchedState){
           print("Contact Fetched!");
         }
        },
      ),
    );
  }
}
