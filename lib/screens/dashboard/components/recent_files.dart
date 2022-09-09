import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/models/RecentFile.dart';

import '../../../constants.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 1800,
              columns: [
                DataColumn(
                  label: Text("File Name"),
                ),
                DataColumn(
                  label: Text("Date"),
                ),
                DataColumn(
                  label: Text("Size"),
                ),
                DataColumn(
                  label: Text("Size1"),
                ),
                DataColumn(
                  label: Text("Size2"),
                ),
                DataColumn(
                  label: Text("Size3"),
                ),
                DataColumn(
                  label: Text("Size4"),
                ),
                DataColumn(
                  label: Text("Size5"),
                ),
                DataColumn(
                  label: Text("Size6"),
                ),
                DataColumn(
                  label: Text("Size7"),
                ),DataColumn(
                  label: Text("Size8"),
                ),DataColumn(
                  label: Text("Size9"),
                ),DataColumn(
                  label: Text("Size10"),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title!),
            ),
          ],
        ),
      ),
      DataCell(Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(fileInfo.date!),
      )),
      DataCell(Text(fileInfo.size!)),
      DataCell(Text(fileInfo.size1!)),
      DataCell(Text(fileInfo.size2!)),
      DataCell(Text(fileInfo.size3!)),
      DataCell(Text(fileInfo.size4!)),
      DataCell(Text(fileInfo.size5!)),
      DataCell(Text(fileInfo.size6!)),
      DataCell(Text(fileInfo.size7!)),DataCell(Text(fileInfo.size8!)),DataCell(Text(fileInfo.size9!)),DataCell(Text(fileInfo.size10!)),
    ],
  );
}
