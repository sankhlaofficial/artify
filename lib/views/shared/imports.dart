// -----------------IMPORTS--------------------------

import 'package:artify/models/entities/artwork.dart';
import 'package:artify/viewmodels/blocs/fetch_artwork/fetch_artwork_bloc.dart';
import 'package:artify/views/constants/strings.dart';
import 'package:artify/views/theme/measurements.dart';
import 'package:cached_network_image/cached_network_image.dart';
//App
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//Theme
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

// -----------------PARTS--------------------------

//App
part 'package:artify/views/artify_app.dart';
part 'package:artify/views/features/home/view/screens/artwork_description/index.dart';
//Features

//Home

part 'package:artify/views/features/home/view/screens/index.dart';
part 'package:artify/views/features/home/view/widgets/artwork_tile.dart';
part 'package:artify/views/features/home/view/widgets/fetched_artwork_list.dart';
part 'package:artify/views/features/home/view/widgets/filter_tile.dart';
part 'package:artify/views/features/home/view/widgets/home_app_bar.dart';
part 'package:artify/views/shared/widgets/art_download_button.dart';
part 'package:artify/views/shared/widgets/cached_image_provider.dart';
part 'package:artify/views/shared/widgets/responsive_grid_view.dart';
part 'package:artify/views/shared/widgets/screen_pop_arrow.dart';
//Shared
//Widgets
part 'package:artify/views/shared/widgets/search_bar.dart';
part 'package:artify/views/shared/widgets/spacer.dart';
//Theme

part 'package:artify/views/theme/colors.dart';
part 'package:artify/views/theme/theme.dart';
