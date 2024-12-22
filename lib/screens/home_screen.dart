import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  int i = 100;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0F1342),
          actions: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://scontent.fkul16-4.fna.fbcdn.net/v/t39.30808-6/460004568_1293625975138955_3321990236026866994_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHcPL18sViC7hunNu4Ev_CmBVXoy34sP9oFVejLfiw_2hkWqSvBvh4UIu9ChervBVmX-NgeCk8NUavo0wdbN4kT&_nc_ohc=_Zs79H_1SoQQ7kNvgFuNbaT&_nc_zt=23&_nc_ht=scontent.fkul16-4.fna&_nc_gid=Afp-2gUlOSLFWUq-LgQhEn9&oh=00_AYDo6SnogTo1CNYCbzf6m78F8yWpYHtsSUxQY5pKhtUXfg&oe=676CDED5"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hello Aung Moe Thu",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Welcome Back!",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () => print("Hi"),
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ))
                ],
              ),
            ))
          ],
        ),
        body: Stack(
          children: [
            Expanded(
                child: ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration:
                            const BoxDecoration(color: Color(0xFF0F1342)),
                      ),
                      Positioned(
                          top: MediaQuery.of(context).size.height * 0.005,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            margin: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.2), // Shadow color
                                  spreadRadius:
                                      0.5, // How much the shadow spreads
                                  blurRadius: 3, // How blurred the shadow is
                                  offset: const Offset(3,
                                      3), // The shadow's offset (horizontal, vertical)
                                ),
                              ],
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("YOUR BALANCE",
                                    style: TextStyle(fontSize: 10)),
                                SizedBox(height: 10),
                                Text(
                                  "\$41,370",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Icon(Icons.arrow_upward),
                                        Text("Transfer")
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Icon(Icons.arrow_downward),
                                        Text("Withdraw")
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Icon(Icons.qr_code),
                                        Text("Pay")
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Icon(Icons.history),
                                        Text("Transactions")
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            )),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    boxShadow:  [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), // Shadow color
                        spreadRadius: 5,                      // How much the shadow spreads
                        blurRadius: 5,                        // How blurred the shadow is
                        offset: Offset(3, 3),                 // The shadow's offset (horizontal, vertical)
                      ),
                    ],
                  ),
                    child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [Icon(Icons.house), Text("Home")],
                    ),
                    const Column(
                      children: [Icon(Icons.credit_card), Text("Cards")],
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFF0F1342),
                        borderRadius: BorderRadius.circular(80)
                      ),
                      child:
                      const Icon(Icons.qr_code_scanner,size: 25,color: Colors.white,)
                    ),
                    const Column(
                      children: [Icon(Icons.add_chart), Text("Expenses")],
                    ),
                    const Column(
                      children: [Icon(Icons.person), Text("Profile")],
                    )
                  ],
                )),

            )
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
