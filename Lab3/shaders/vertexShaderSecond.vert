attribute float vertexDisplacement
uniform float delta;
varying float vOpacity;
varying vec3 vUv;

void main() {
  vUv = position;
  vOpacity = vertexDisplacement;

  vec3 p = position;

  p.x += sin(vertexDisplacement) * 50;
  p.y += cos(vertexDisplacement) * 50;
  vec4 modelViewPosition = modelViewMatrix * vec4(position, 1.0);
  gl_Position = projectionMatrix * modelViewPosition;
}