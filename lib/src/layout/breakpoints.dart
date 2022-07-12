part of flutter_bootstrap5;

class _BootstrapBreakPoints {
  static const BreakPoint xs = BreakPoint(minWidth: 0, maxWidth: 576);
  static const BreakPoint sm = BreakPoint(minWidth: 576, maxWidth: 768);
  static const BreakPoint md = BreakPoint(minWidth: 768, maxWidth: 992);
  static const BreakPoint lg = BreakPoint(minWidth: 992, maxWidth: 1200);
  static const BreakPoint xl = BreakPoint(minWidth: 1200, maxWidth: 1400);
  static const BreakPoint xxl =
      BreakPoint(minWidth: 1400, maxWidth: double.infinity);
}

class _BootstrapContainerBreakPoints {
  static const double xs = double.infinity;
  static const double sm = 540;
  static const double md = 720;
  static const double lg = 960;
  static const double xl = 1140;
  static const double xxl = 1320;
}

class ContainerBreakPoints {
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double xxl;

  const ContainerBreakPoints({
    this.xs = _BootstrapContainerBreakPoints.xs,
    this.sm = _BootstrapContainerBreakPoints.sm,
    this.md = _BootstrapContainerBreakPoints.md,
    this.lg = _BootstrapContainerBreakPoints.lg,
    this.xl = _BootstrapContainerBreakPoints.xl,
    this.xxl = _BootstrapContainerBreakPoints.xxl,
  });
}

class BreakPoints {
  final BreakPoint xs;
  final BreakPoint sm;
  final BreakPoint md;
  final BreakPoint lg;
  final BreakPoint xl;
  final BreakPoint xxl;

  const BreakPoints({
    this.xs = _BootstrapBreakPoints.xs,
    this.sm = _BootstrapBreakPoints.sm,
    this.md = _BootstrapBreakPoints.md,
    this.lg = _BootstrapBreakPoints.lg,
    this.xl = _BootstrapBreakPoints.xl,
    this.xxl = _BootstrapBreakPoints.xxl,
  });

  BreakPoint getBreakPointForWidth(double width) => _values.firstWhere(
      (element) => element.minWidth < width && element.maxWidth >= width);

  double? _currentSizing(
    double maxWidth,
    BreakPoint breakPoint, {
    _FB5Sizing? fromStyle,
    _FB5Sizing? xs,
    _FB5Sizing? sm,
    _FB5Sizing? md,
    _FB5Sizing? lg,
    _FB5Sizing? xl,
    _FB5Sizing? xxl,
    double? defaultSize,
  }) {
    double? width = defaultSize;

    if (fromStyle != null) {
      width = maxWidth * fromStyle.numerator / 12;
    }
    if (breakPoint.isBreakPointOrLarger(this.xs) && xs != null) {
      width = maxWidth * xs.numerator / 12;
    }
    if (breakPoint.isBreakPointOrLarger(this.sm) && sm != null) {
      width = maxWidth * sm.numerator / 12;
    }
    if (breakPoint.isBreakPointOrLarger(this.md) && md != null) {
      width = maxWidth * md.numerator / 12;
    }
    if (breakPoint.isBreakPointOrLarger(this.lg) && lg != null) {
      width = maxWidth * lg.numerator / 12;
    }
    if (breakPoint.isBreakPointOrLarger(this.xl) && xl != null) {
      width = maxWidth * xl.numerator / 12;
    }
    if (breakPoint.isBreakPointOrLarger(this.xxl) && xxl != null) {
      width = maxWidth * xxl.numerator / 12;
    }

    return width;
  }

  double? currentWidth(
    double maxWidth,
    BreakPoint breakPoint, {
    FB5ColSize? fromStyle,
    FB5ColSize? xs,
    FB5ColSize? sm,
    FB5ColSize? md,
    FB5ColSize? lg,
    FB5ColSize? xl,
    FB5ColSize? xxl,
    double? defaultWidth = double.infinity,
  }) =>
      _currentSizing(
        maxWidth,
        breakPoint,
        fromStyle: fromStyle,
        xs: xs,
        sm: sm,
        md: md,
        lg: lg,
        xl: xl,
        xxl: xxl,
        defaultSize: defaultWidth,
      );

  double? currentOffset(
    double maxWidth,
    BreakPoint breakPoint, {
    FB5ColOffset? fromStyle,
    FB5ColOffset? xs,
    FB5ColOffset? sm,
    FB5ColOffset? md,
    FB5ColOffset? lg,
    FB5ColOffset? xl,
    FB5ColOffset? xxl,
  }) =>
      _currentSizing(maxWidth, breakPoint,
          fromStyle: fromStyle,
          xs: xs,
          sm: sm,
          md: md,
          lg: lg,
          xl: xl,
          xxl: xxl);

  EdgeInsets? _currentSpacing(
    double spacer,
    BreakPoint breakPoint, {
    _FB5Spacing? fromStyle,
    _FB5Spacing? xs,
    _FB5Spacing? sm,
    _FB5Spacing? md,
    _FB5Spacing? lg,
    _FB5Spacing? xl,
    _FB5Spacing? xxl,
    double multiplier = 1.0,
  }) {
    EdgeInsets spacing = const EdgeInsets.only();

    if (fromStyle != null) {
      spacing = EdgeInsets.only(
        left: (fromStyle.left ?? spacing.left),
        right: (fromStyle.right ?? spacing.right),
        bottom: (fromStyle.bottom ?? spacing.bottom),
        top: (fromStyle.top ?? spacing.top),
      );
    }

    if (breakPoint.isBreakPointOrLarger(this.xs) && xs != null) {
      spacing = EdgeInsets.only(
        left: (xs.left ?? spacing.left),
        right: (xs.right ?? spacing.right),
        bottom: (xs.bottom ?? spacing.bottom),
        top: (xs.top ?? spacing.top),
      );
    }
    if (breakPoint.isBreakPointOrLarger(this.sm) && sm != null) {
      spacing = EdgeInsets.only(
        left: (sm.left ?? spacing.left),
        right: (sm.right ?? spacing.right),
        bottom: (sm.bottom ?? spacing.bottom),
        top: (sm.top ?? spacing.top),
      );
    }
    if (breakPoint.isBreakPointOrLarger(this.md) && md != null) {
      spacing = EdgeInsets.only(
        left: (md.left ?? spacing.left),
        right: (md.right ?? spacing.right),
        bottom: (md.bottom ?? spacing.bottom),
        top: (md.top ?? spacing.top),
      );
    }
    if (breakPoint.isBreakPointOrLarger(this.lg) && lg != null) {
      spacing = EdgeInsets.only(
        left: (lg.left ?? spacing.left),
        right: (lg.right ?? spacing.right),
        bottom: (lg.bottom ?? spacing.bottom),
        top: (lg.top ?? spacing.top),
      );
    }
    if (breakPoint.isBreakPointOrLarger(this.xl) && xl != null) {
      spacing = EdgeInsets.only(
        left: (xl.left ?? spacing.left),
        right: (xl.right ?? spacing.right),
        bottom: (xl.bottom ?? spacing.bottom),
        top: (xl.top ?? spacing.top),
      );
    }
    if (breakPoint.isBreakPointOrLarger(this.xxl) && xxl != null) {
      spacing = EdgeInsets.only(
        left: (xxl.left ?? spacing.left),
        right: (xxl.right ?? spacing.right),
        bottom: (xxl.bottom ?? spacing.bottom),
        top: (xxl.top ?? spacing.top),
      );
    }

    return EdgeInsets.only(
      left: spacing.left * spacer * multiplier,
      right: spacing.right * spacer * multiplier,
      bottom: spacing.bottom * spacer * multiplier,
      top: spacing.top * spacer * multiplier,
    );
  }

  EdgeInsets? currentMargin(
    double spacer,
    BreakPoint breakPoint, {
    FB5ContentMargin? fromStyle,
    FB5ContentMargin? xs,
    FB5ContentMargin? sm,
    FB5ContentMargin? md,
    FB5ContentMargin? lg,
    FB5ContentMargin? xl,
    FB5ContentMargin? xxl,
  }) =>
      _currentSpacing(
        spacer,
        breakPoint,
        fromStyle: fromStyle,
        xs: xs,
        sm: sm,
        md: md,
        lg: lg,
        xl: xl,
        xxl: xxl,
      );

  EdgeInsets? currentPadding(
    double spacer,
    BreakPoint breakPoint, {
    FB5ContentPadding? fromStyle,
    FB5ContentPadding? xs,
    FB5ContentPadding? sm,
    FB5ContentPadding? md,
    FB5ContentPadding? lg,
    FB5ContentPadding? xl,
    FB5ContentPadding? xxl,
  }) =>
      _currentSpacing(
        spacer,
        breakPoint,
        fromStyle: fromStyle,
        xs: xs,
        sm: sm,
        md: md,
        lg: lg,
        xl: xl,
        xxl: xxl,
      );

  EdgeInsets? currentGutter(
    double spacer,
    BreakPoint breakPoint, {
    Gutter? fromStyle,
    Gutter? xs,
    Gutter? sm,
    Gutter? md,
    Gutter? lg,
    Gutter? xl,
    Gutter? xxl,
  }) =>
      _currentSpacing(
        spacer,
        breakPoint,
        fromStyle: fromStyle,
        xs: xs,
        sm: sm,
        md: md,
        lg: lg,
        xl: xl,
        xxl: xxl,
        multiplier: 0.5,
      );

  bool currentDisplay(
    BreakPoint breakPoint, {
    FB5ContentDisplay? fromStyle,
    FB5ContentDisplay? xs,
    FB5ContentDisplay? sm,
    FB5ContentDisplay? md,
    FB5ContentDisplay? lg,
    FB5ContentDisplay? xl,
    FB5ContentDisplay? xxl,
  }) {
    bool visible = true;

    if (fromStyle != null) {
      visible = fromStyle.visible;
    }
    if (breakPoint.isBreakPointOrLarger(this.xs) && xs != null) {
      visible = xs.visible;
    }
    if (breakPoint.isBreakPointOrLarger(this.sm) && sm != null) {
      visible = sm.visible;
    }
    if (breakPoint.isBreakPointOrLarger(this.md) && md != null) {
      visible = md.visible;
    }
    if (breakPoint.isBreakPointOrLarger(this.lg) && lg != null) {
      visible = lg.visible;
    }
    if (breakPoint.isBreakPointOrLarger(this.xl) && xl != null) {
      visible = xl.visible;
    }
    if (breakPoint.isBreakPointOrLarger(this.xxl) && xxl != null) {
      visible = xxl.visible;
    }

    return visible;
  }

  int _currentOrder(
    double maxWidth,
    BreakPoint breakPoint, {
    FB5OrderNumber? fromStyle,
    FB5OrderNumber? xs,
    FB5OrderNumber? sm,
    FB5OrderNumber? md,
    FB5OrderNumber? lg,
    FB5OrderNumber? xl,
    FB5OrderNumber? xxl,
  }) {
    int? order;

    if (fromStyle != null) {
      order = fromStyle.order;
    }
    if (breakPoint.isBreakPointOrLarger(this.xs) && xs != null) {
      order = xs.order;
    }
    if (breakPoint.isBreakPointOrLarger(this.sm) && sm != null) {
      order = sm.order;
    }
    if (breakPoint.isBreakPointOrLarger(this.md) && md != null) {
      order = md.order;
    }
    if (breakPoint.isBreakPointOrLarger(this.lg) && lg != null) {
      order = lg.order;
    }
    if (breakPoint.isBreakPointOrLarger(this.xl) && xl != null) {
      order = xl.order;
    }
    if (breakPoint.isBreakPointOrLarger(this.xxl) && xxl != null) {
      order = xxl.order;
    }

    return order ?? 0;
  }

  double? _currentRowCols(
    double maxWidth,
    BreakPoint breakPoint, {
    _FB5RowColsNumber? fromStyle,
    _FB5RowColsNumber? xs,
    _FB5RowColsNumber? sm,
    _FB5RowColsNumber? md,
    _FB5RowColsNumber? lg,
    _FB5RowColsNumber? xl,
    _FB5RowColsNumber? xxl,
    double? defaultSize,
  }) {
    double? width = defaultSize;

    if (fromStyle != null) {
      width = maxWidth / fromStyle.cols;
    }
    if (breakPoint.isBreakPointOrLarger(this.xs) && xs != null) {
      width = maxWidth / xs.cols;
    }
    if (breakPoint.isBreakPointOrLarger(this.sm) && sm != null) {
      width = maxWidth / sm.cols;
    }
    if (breakPoint.isBreakPointOrLarger(this.md) && md != null) {
      width = maxWidth / md.cols;
    }
    if (breakPoint.isBreakPointOrLarger(this.lg) && lg != null) {
      width = maxWidth / lg.cols;
    }
    if (breakPoint.isBreakPointOrLarger(this.xl) && xl != null) {
      width = maxWidth / xl.cols;
    }
    if (breakPoint.isBreakPointOrLarger(this.xxl) && xxl != null) {
      width = maxWidth / xxl.cols;
    }

    return width;
  }

  List<BreakPoint> get _values => [xs, sm, md, lg, xl, xxl];
}

class BreakPoint {
  final double minWidth;
  final double maxWidth;

  const BreakPoint({required this.minWidth, required this.maxWidth});

  bool isBreakPointOrSmaller(BreakPoint breakPoint) {
    return maxWidth <= breakPoint.maxWidth;
  }

  bool isBreakPointOrLarger(BreakPoint breakPoint) {
    return minWidth >= breakPoint.minWidth;
  }
}
