import 'package:audacity_test_project/application/homepage/bloc/homepage_bloc.dart';
import 'package:audacity_test_project/presentation/homePage/widgets/new_arrival_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewArrivalWidget extends StatelessWidget {
  const NewArrivalWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomepageBloc, HomepageState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loading: (_) => CircularProgressIndicator(),
          loadSuccess: (state) => Container(
            height: size.height * .23,
            width: size.width,
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.only(
              left: 5,
              // top: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).accentColor.withOpacity(.8),
                  offset: Offset(2, 5),
                  spreadRadius: 0,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New Arrivals',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Container(
                  height: size.height * .19,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.newArrival.length,
                    itemBuilder: (context, index) {
                      return NewArrivalCard(
                        size: size,
                        productName: state.newArrival[index]
                            .newArrivalsproNewArrivalsProductName!.value,
                        productBgImage: state.newArrival[index]
                            .newArrivalsImageNewArrivalsProductImage!.value,
                        productPrice: state
                            .newArrival[index].newArrivalsShortDetails!.value,
                      );
                    },
                  ),
                ),
                // const Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
