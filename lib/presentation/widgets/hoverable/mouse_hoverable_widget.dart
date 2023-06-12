import 'package:flutter/material.dart';

class MouseHoverableWidget extends StatefulWidget {
  final Matrix4? transformEffect;
  final Widget Function(bool isHovered) builder;

  const MouseHoverableWidget({super.key, required this.builder, this.transformEffect});
  
  @override
  State<StatefulWidget> createState() => _MouseHoverableWidget();

}

class _MouseHoverableWidget extends State<MouseHoverableWidget> {

  bool isHovered = false;

  @override
  void setState(VoidCallback fn) {
    if(mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: getTransformEffect(),
        child: widget.builder(isHovered),
      )
    );
  }

  Matrix4 getTransformEffect() {
    if(isHovered && widget.transformEffect != null) {
      return widget.transformEffect!;
    }
    
    return Matrix4.identity();
  }

  void onEntered(bool isHovered) {
    setState(() { 
      this.isHovered = isHovered;
    });
  } 
}