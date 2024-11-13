import 'package:flutter/material.dart';

class MyOrderHeadingTales extends StatelessWidget {
  const MyOrderHeadingTales({
    super.key,
    required this.title,
    required this.orders, // List of orders for this category
    this.textColor = Colors.white,
    this.backgroundColorOfHeading = const Color.fromARGB(255, 111, 190, 173),
    required this.imageUrlsofItems,
  });

  final String title;
  final List<Order> orders; // List of order objects to display
  final Color textColor;
  final Color backgroundColorOfHeading;
  final List<String> imageUrlsofItems; // List of image URLs

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.white),
        child: ExpansionTile(
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          backgroundColor: backgroundColorOfHeading,
          collapsedBackgroundColor: backgroundColorOfHeading,
          iconColor: Colors.black,
          collapsedIconColor: Colors.black,
          textColor: textColor,
          collapsedTextColor: textColor,
          childrenPadding: EdgeInsets.zero,
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          children: <Widget>[
            Container(
              color: Colors.white,
              child: ListView.separated(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  final order = orders[index];
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order NO: ${order.orderNumber}',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 46, 0, 0),
                          ),
                        ),
                        Text(
                          order.hotelName,
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          height: 50,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              final imageUrl = imageUrlsofItems[index];
                              return Container(
                                width: 60, // Set the width to 100 pixels
                                height:
                                    60, // Set the height to 100 pixels for a square shape
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(
                                          .2), // Slight shadow color
                                      spreadRadius:
                                          1, // How wide the shadow spreads
                                      blurRadius: 4, // How blurry the shadow is
                                      offset:
                                          const Offset(0, 2), // Shadow position
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  image: DecorationImage(
                                    image: NetworkImage(imageUrl),
                                    fit: BoxFit
                                        .cover, // Maintain aspect ratio while filling the container
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(width: 10),
                            itemCount: imageUrlsofItems.length,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          'Delivered Date: ${order.orderDate}',
                          style: const TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 46, 0, 0),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  color: Colors.white,
                  height: 1,
                ),
                itemCount: orders.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Order model for passing order data
class Order {
  final String orderNumber;
  final String orderDate;
  final String hotelName;

  Order({
    required this.orderNumber,
    required this.orderDate,
    required this.hotelName,
  });
}