import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/components/skill_card_component.dart';

class SkillOverviewWidget extends StatefulWidget {
  const SkillOverviewWidget({Key? key}) : super(key: key);

  @override
  State<SkillOverviewWidget> createState() => _SkillOverviewWidgetState();
}

class _SkillOverviewWidgetState extends State<SkillOverviewWidget> {

  List<Map<String, dynamic>> skills = [
    {
      "name": "Flutter",
      "icon": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAS1BMVEVHcEwntvYpuPhVxvhUxfhUxfgBV5tUxfgAVppUxfgujslUxfg2qN9UxfgBV5tUxfgAV5sptvY8vfcltvcei78ATY4qvP4ALVsAQ4Eo7MmFAAAAD3RSTlMAQZRKXNlalJUTD5zyoGh+3eskAAAAeklEQVQ4je3NyxJAMAyF4VDXulVVef8nRRuGkcZY2Dm7zPfPBOD9RIIrac87XPPg+e+fuyxx8vDq7GI/UrgFId9fhN0Xm0ea9q1w3g+adoDEee8LwgHdFayvRU07QOzcmrHgCmtmpZjCmmlUXOGdKQqF+7TIcK0MFZctkNARwIZ8iHwAAAAASUVORK5CYII=",
      "description": "Flutter is an open-source mobile app development framework created by Google that allows developers to build high-performance, visually attractive, and natively compiled applications for mobile, web, and desktop from a single codebase.",
    },
    {
      "name": "FlutterFlow",
      "icon": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAUVBMVEVHcExNOvRLOe9NOvVNO/ZMOfFMOvNCMeFMOvJMOvJMOfQ2J8dBMNpAL9lLOPAdD5wbDZgdD5wfEZ4fEZ0hE6IdDp0fEZ5AL9lMOvIuH7hMOvGoOZsWAAAAG3RSTlMAaf88Iem2EIL/Vf///8eE/7D//3U87sWWbJ6vh0a6AAAApElEQVR4AaXShQ0DQRADQMfPzNh/n8GntRQe8eESHk58wsGdy2c83Hl8xtcPVIAbPhXixucTkYcbh085/0aIuzhSXJzwkKSZlft3IRZFKSpYQd0IiEr26xZW14geoi9FB6tlZA2wcooowFFMFcEgVYyjkSrHkUuhEXhUoUQoIg+GR+XIAZ0CH9aUpXfrFMxQ5UMBIc1+vo9O9xX6pmnxSte/2r8ACjkPq9uY/jUAAAAASUVORK5CYII=",
      "description": "FlutterFlow is a visual development platform that allows developers to create Flutter applications without writing any code. It provides a drag-and-drop interface and a library of pre-built components that can be used to design user interfaces, configure application logic, and integrate with backend services.",
    },
    {
      "name": "Android App Development",
      "icon": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgBAMAAACBVGfHAAAALVBMVEX///893IQ93IQ93IQ93IQ93IQ93IQ93IQ93IQ93IQ93IQ93IQ93IQ93IQ93ITplTBcAAAAD3RSTlMAkMBA/2DwECCAUKBw0DCZFhB0AAAAj0lEQVR4AWOgF2BUgLGYBMAUsytMIMQAQqsVQGj2JKhEywSOlZu0ZzVwesAM8bniAgS+RwSgAjwuUHAAqlUFJuAEMeyZCxzkgfh8KQgBtwdAgVoXJHAdKCCCLOAIdCdQoS2Edxmo2YCBCeiAaojAdqBzFBhagKwUqJFA7MFwxAUF+DCooAo4MbigAUyBQQIAqJE/SmDXXYoAAAAASUVORK5CYII=",
      "description": "Android app development is the process of creating mobile applications for Android devices, such as smartphones and tablets, using the Android software development kit (SDK) and programming languages like Java or Kotlin. Android apps can be developed using a range of tools and frameworks, including Android Studio, Eclipse, and React Native.",
    },
    {
      "name": "Dart",
      "icon": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAV1BMVEVHcExAvf9Ayf9Ayv9BxP5DzP9AxP9Ayv8cbKg+su46tuwvlc8cicgASpIUaKsmf7wxwf4CWJwAVZgAWpoAWJ0tvP0qtvYAXKMDVpMAXKAAV5wAXaNA0P8MFP0QAAAAHXRSTlMAOpqr1P//1BLO/9D//9f//v//2cD//62dlnn8nlNVI2UAAADLSURBVHgBfc6BCoJAEIThNT3dStPbUit9/+dM9lCGkesHQbjP8YQqLmUh+Yoq1HWossdNqL3m/zELPM4Kvd4ouse97bgHfq/90HYxRkuP+csTxKsfRxcYCI39OKEwErNtAAVtaHQwDSgMxJzAecOS0JgAbEBvkc8OSNgOIgD6i4MvAtpwMBsAEMYLLI4FWewALBLQBQDc1HawCQKw4UA0EvANAKIEXCAQHQi4MDuA6HgWBgubCDUVRLdE8kIoFAhYMGDBgMR6WY9K8X5KYi1POhaINAAAAABJRU5ErkJggg==",
      "description": "Dart is an open-source, client-optimized programming language developed by Google. Dart is a class-based, object-oriented language with C-style syntax and was initially designed as an alternative to JavaScript for web development. It is now widely used for building mobile, web, and desktop applications, including Google's cross-platform mobile app development framework, Flutter. ",
    },
    {
      "name": "C/C++",
      "icon": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAFS0lEQVR4AbWVA5hcSxCF+9lWbNu2bdt2soht27b9zGRt27at887tCe/Mere+7x92V53SjAAgmXHKoTB8SLaRMBJBdpFPC+MDgKQoAiYQPwIVQWRKaQpoRn4nyIe/SauSFPAtOUBQSI6Q74srYAGJISgicWRJUQR0IxZqhzNPO2DqCXsM32+N/jst0WeHhaQfX/Mz+R3P6BJiQ3oVREAFckntYNZpR0w7aY++Oy0wdJ81DK654sSf/rhlFiJRXhtcd8UwfteXgihE3tEh5Nr0kw5V5p511imgA0lRX5pzxhGjDtqgH4PvfOQNB/8E5GaOgQnY/cRHVmfkARvefS1iOhOYzfd617zSZp916qZLQJAquLzA0srM/nWJRkHtuVuMIoDVspI+ptPXiqueSnD03vofvpl8KUxLgK5+jz1si8F7rOAclIjCmkdoEobstWI7nLDyli/GHbZClbm3IPofghh0JEuXgAS1iB5bzfGPcxSKanFpwIiDdmi2/DHE0GMMfhBi9GmIsWcT8hIgsx+42xLrbntAl2Vl5+CRdTj2PfWRPLQKQ0ZWDtR239gLX40+A9FjH8SIE0pgiDFnFPIWwEmV02zrGw+1hcamyQnvvMlMriDP8bWpnPyEVI2I5y6haL/iLkSbnRADDkOMexGYYgoiQPZ+3jknZKqyymTmiy86o9sWMyli5ovpXnDeBROOuUDvqitmHf8PojdL3XEPRJd9FHAUYtJ5Zs/Anfey/2zFhHN5CxjEwdv+0Asqk5vQlcHZIhl41hknGNzwweJLbui64U86Pw7RjlkPOwnRaifFmqGBHivRcrsMbnjNAt/PvALRaW/eAvjLJn9c1Hb8D3/02mYuzyy/7gO9m74Ua4rvZ1yH6HtADposc78j2HDZHIpFJqSi7cIb0L9sBsU8Q+PRYO61ogk4+rsfBu+zw6p7wZhwyBLVxzPjDms53Qw+8RJ7zVKPPEUBh7H9hhUUi01OR/slt7D6uiUU849MRKP5N/JpATdgB3/11GbkHocuHLgWS2+zx6shmi1jOddAdN/Ash+kkCMstTLxbEHrndC/aoGmhvc1LeA8rL9tjTJzrsoW5DuE8zmEytCprdxYTvVno+lwHUSvLRA9N/N5E0SlmSg35gAmH3/GITysBIHoth9i4FFW57xm+rvuy3sI1WvoFpYGtZk4+eGH7gxYZiZEjYUayszAt53Xw94zGIr9ZR+E1kqV2u1mNU6/sYan811D+a83j2s16bQnDG+6QpfFpWdi25m/0H/pBfQjW07/iejUDKjt9nMvfDDkOOfi7Js/QroFcK0SlPUyuOWPJde80VHvAbNbjP0PzFFUM3ELwHuNlnMo2Y7xbMOEi7kLWMagBncCMGznM/w0jL1rvhSiwRKIRivwt4M/CmvGbkEQTfQ4qKQbN6X3NrbjmEbE+Avaf0YTj1iF1J15AaIVL7RcAdGDfe67FULJoJk+Lv9qi4LajT8c6MOQCSyTPqSvrus09OdcjDoVoSVAdNvQRbRYniG6rpeTzUsa+tBBc32ImgsxSO8yntn4IDd7buuLYQZcs1qLIJrqvQ7+ku4buT1rlec+2gI6rxOi56ZqPHiD4C16b6F67nr1BbKs9SYfwaQd97Hq3N9YTSbteID6U44yqL7mTJf18g7vqrlDalGA0BLAL96kH3HQctBrs3TOtmjWr+p8DXwtP+Mq8oyuwE5k0JsxdAvQZgWJIygiScRQ7bcQAiQ/khNFCH6GlCGiqALUtCHPChDYiHTQvl90AWqmkRACFRFklvp8KQiQfE72yKAaDpCviSisgP8BD5bkVf9PGgoAAAAASUVORK5CYII=",
      "description": "C and C++ are both high-level, general-purpose programming languages that have been widely used for developing system software, operating systems, desktop applications, video games, and embedded systems. C++ is an extension of C that adds object-oriented programming (OOP) features, including classes, inheritance, and polymorphism.",
    },
    {
      "name": "Java",
      "icon": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAAh1BMVEXe5uzAztqxwtHc4OT09PT19fXw8PCqu8rn5+f8/Pzs0Lf6+vrnrXrleiugscLk5OT39/fs7OzkcR7lx6zh4eHhr4LhZRLhpW+Vp7fd3d3gYA6Knq3W1tbbbhzXoW1cepV6jZ6EmKdIZoJWc4vQ0NB8kJ6otb3Ly8twhZV1jqW5vcK9yM9ofY52NCXaAAAAr0lEQVR4AU3KhUIDMQwA0BwrWWftZWQSLrDq/P+/jxPsVaIAzcs/TV/PzOsI+2dmDcztYoTLVf/bed9YDXC9MX3oG863PVpv6c20rXfg2BiDuz0ftmgMOzgKItKe9nsiRDn2DSKyG3m3Vpj6RqfWq+rHp8opiHYQ1XNKub8dp1Ai1MIi554rJYVLhXAR0Zz6DU1BLwGCsmqZMGuAq7K7nSbe6hXqnf/4e4VHfP4TH1/dVRTdLcfq+gAAAABJRU5ErkJggg==",
      "description": "Java is a high-level, general-purpose programming language that was developed by Sun Microsystems (now owned by Oracle) in the mid-1990s. It is designed to be platform-independent, meaning that Java code can be compiled to run on any computer or device that has a Java Virtual Machine (JVM) installed, regardless of the underlying hardware and operating system.",
    },
    {
      "name": "Firebase",
      "icon": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAACX0lEQVR4AcXTA4wcUQDG8bNthLVtM2bjhrUZ1rbNY1QjqG1FdVTbWOvr1+07zNvt7LxFLsnvtDPz/14uEwWgTmW0P4OpBUWFDPBhZMBsukGxDTVgP4Fm+vmsHfWI9ICnBLJQU+mz1XQ0kgNSyUUQrlKM+CyG3pKbmkRqQDeCZJr4bChB2PG/qOdWqzjDA77OT9PgTWMJEhM1pmqCYKE8n/vvtGhBu0MZsI0gs2+Lf+DcFWOR/r5AiremD/QilAHXCLKfy5JhWpMs//0zJYt4B/pEII/jUpt05QG8IZp++Tk9+Dm+LUiDp8xn3DgGO9EXQg3X1dbdgxnQhCD7sTQV/NzLsjFe+/mBlNcMfifU577eamQwA4bJcdtW7+lrfV+cBlTUxoFbTUVUi2/CumAGLNIMYIhBhrX4L9GNCyeDGXCcUMO6WZxeYt6ZrRsXXgcz4DmB4Pl7+kW+8V9b8uG52VxE9PFNyDQ8gNEszek3xvvGtzJ+Sz8uvQm9VAb0rz19eTS+LdTGf2/LBxTi4k0YqzJgKoFgWZ+oje8oVI6LN2GjyoAygruMp19QL76T8dsKYa2zKgPuEcxrE+viu6S4uveGBjAcR1b33hh8Fac37dGJK3BeapNjZEArgml18r94WZFySOdN6GtkwHDX7hhv3FyuF1fnvtFqgpEBq3+vSoa5siT0qMRzu8XWgAMcO+JumipLwx7n6WE/3+ZiwAGmilKX9XQ78GLwpnCFwWeCPgUcwIsG0CWC0hCdsHCJBugM0FIfohaWB6gPUQwrDFAbohrWH6A+RD+sPkB9iHJY8gfPtF+WYjP8ZwAAAABJRU5ErkJggg==",
      "description": "Firebase is a mobile and web application development platform developed by Google. It provides a set of tools and services that allows developers to build high-quality mobile and web applications quickly and easily, with features such as real-time data synchronization, user authentication, cloud storage, and analytics.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 120,),
      child: SizedBox(
        width: size.width,
        height: size.height * 0.4,
        child: ListView.builder(scrollDirection: Axis.horizontal, itemBuilder: (context, index) => SkillCardComponent(image: skills[index]["icon"], title: skills[index]["name"], description: skills[index]["description"],), itemCount: skills.length,),
      ),
    );
  }
}
