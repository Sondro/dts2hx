package js.lib;
extern interface WebGL2RenderingContextBase {
	function beginQuery(target:Float, query:js.html.WebGLQuery):Void;
	function beginTransformFeedback(primitiveMode:Float):Void;
	function bindBufferBase(target:Float, index:Float, buffer:Null<js.html.WebGLBuffer>):Void;
	function bindBufferRange(target:Float, index:Float, buffer:Null<js.html.WebGLBuffer>, offset:Float, size:Float):Void;
	function bindSampler(unit:Float, sampler:Null<js.html.WebGLSampler>):Void;
	function bindTransformFeedback(target:Float, tf:Null<js.html.WebGLTransformFeedback>):Void;
	function bindVertexArray(array:Null<js.html.WebGLVertexArrayObject>):Void;
	function blitFramebuffer(srcX0:Float, srcY0:Float, srcX1:Float, srcY1:Float, dstX0:Float, dstY0:Float, dstX1:Float, dstY1:Float, mask:Float, filter:Float):Void;
	function clearBufferfi(buffer:Float, drawbuffer:Float, depth:Float, stencil:Float):Void;
	@:overload(function(buffer:Float, drawbuffer:Float, values:Iterable<Float>, ?srcOffset:Float):Void { })
	function clearBufferfv(buffer:Float, drawbuffer:Float, values:haxe.extern.EitherType<Float32Array, std.Array<Float>>, ?srcOffset:Float):Void;
	@:overload(function(buffer:Float, drawbuffer:Float, values:Iterable<Float>, ?srcOffset:Float):Void { })
	function clearBufferiv(buffer:Float, drawbuffer:Float, values:haxe.extern.EitherType<Int32Array, std.Array<Float>>, ?srcOffset:Float):Void;
	@:overload(function(buffer:Float, drawbuffer:Float, values:Iterable<Float>, ?srcOffset:Float):Void { })
	function clearBufferuiv(buffer:Float, drawbuffer:Float, values:haxe.extern.EitherType<Uint32Array, std.Array<Float>>, ?srcOffset:Float):Void;
	function clientWaitSync(sync:js.html.WebGLSync, flags:Float, timeout:Float):Float;
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, srcData:ArrayBufferView, ?srcOffset:Float, ?srcLengthOverride:Float):Void { })
	function compressedTexImage3D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, imageSize:Float, offset:Float):Void;
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, zoffset:Float, width:Float, height:Float, depth:Float, format:Float, srcData:ArrayBufferView, ?srcOffset:Float, ?srcLengthOverride:Float):Void { })
	function compressedTexSubImage3D(target:Float, level:Float, xoffset:Float, yoffset:Float, zoffset:Float, width:Float, height:Float, depth:Float, format:Float, imageSize:Float, offset:Float):Void;
	function copyBufferSubData(readTarget:Float, writeTarget:Float, readOffset:Float, writeOffset:Float, size:Float):Void;
	function copyTexSubImage3D(target:Float, level:Float, xoffset:Float, yoffset:Float, zoffset:Float, x:Float, y:Float, width:Float, height:Float):Void;
	function createQuery():Null<js.html.WebGLQuery>;
	function createSampler():Null<js.html.WebGLSampler>;
	function createTransformFeedback():Null<js.html.WebGLTransformFeedback>;
	function createVertexArray():Null<js.html.WebGLVertexArrayObject>;
	function deleteQuery(query:Null<js.html.WebGLQuery>):Void;
	function deleteSampler(sampler:Null<js.html.WebGLSampler>):Void;
	function deleteSync(sync:Null<js.html.WebGLSync>):Void;
	function deleteTransformFeedback(tf:Null<js.html.WebGLTransformFeedback>):Void;
	function deleteVertexArray(vertexArray:Null<js.html.WebGLVertexArrayObject>):Void;
	function drawArraysInstanced(mode:Float, first:Float, count:Float, instanceCount:Float):Void;
	@:overload(function(buffers:Iterable<Float>):Void { })
	function drawBuffers(buffers:std.Array<Float>):Void;
	function drawElementsInstanced(mode:Float, count:Float, type:Float, offset:Float, instanceCount:Float):Void;
	function drawRangeElements(mode:Float, start:Float, end:Float, count:Float, type:Float, offset:Float):Void;
	function endQuery(target:Float):Void;
	function endTransformFeedback():Void;
	function fenceSync(condition:Float, flags:Float):Null<js.html.WebGLSync>;
	function framebufferTextureLayer(target:Float, attachment:Float, texture:Null<js.html.WebGLTexture>, level:Float, layer:Float):Void;
	function getActiveUniformBlockName(program:js.html.WebGLProgram, uniformBlockIndex:Float):Null<String>;
	function getActiveUniformBlockParameter(program:js.html.WebGLProgram, uniformBlockIndex:Float, pname:Float):Any;
	@:overload(function(program:js.html.WebGLProgram, uniformIndices:Iterable<Float>, pname:Float):Any { })
	function getActiveUniforms(program:js.html.WebGLProgram, uniformIndices:std.Array<Float>, pname:Float):Any;
	function getBufferSubData(target:Float, srcByteOffset:Float, dstBuffer:ArrayBufferView, ?dstOffset:Float, ?length:Float):Void;
	function getFragDataLocation(program:js.html.WebGLProgram, name:String):Float;
	function getIndexedParameter(target:Float, index:Float):Any;
	function getInternalformatParameter(target:Float, internalformat:Float, pname:Float):Any;
	function getQuery(target:Float, pname:Float):Null<js.html.WebGLQuery>;
	function getQueryParameter(query:js.html.WebGLQuery, pname:Float):Any;
	function getSamplerParameter(sampler:js.html.WebGLSampler, pname:Float):Any;
	function getSyncParameter(sync:js.html.WebGLSync, pname:Float):Any;
	function getTransformFeedbackVarying(program:js.html.WebGLProgram, index:Float):Null<js.html.WebGLActiveInfo>;
	function getUniformBlockIndex(program:js.html.WebGLProgram, uniformBlockName:String):Float;
	@:overload(function(program:js.html.WebGLProgram, uniformNames:Iterable<String>):Null<Iterable<Float>> { })
	function getUniformIndices(program:js.html.WebGLProgram, uniformNames:std.Array<String>):Null<std.Array<Float>>;
	@:overload(function(target:Float, attachments:Iterable<Float>):Void { })
	function invalidateFramebuffer(target:Float, attachments:std.Array<Float>):Void;
	@:overload(function(target:Float, attachments:Iterable<Float>, x:Float, y:Float, width:Float, height:Float):Void { })
	function invalidateSubFramebuffer(target:Float, attachments:std.Array<Float>, x:Float, y:Float, width:Float, height:Float):Void;
	function isQuery(query:Null<js.html.WebGLQuery>):Bool;
	function isSampler(sampler:Null<js.html.WebGLSampler>):Bool;
	function isSync(sync:Null<js.html.WebGLSync>):Bool;
	function isTransformFeedback(tf:Null<js.html.WebGLTransformFeedback>):Bool;
	function isVertexArray(vertexArray:Null<js.html.WebGLVertexArrayObject>):Bool;
	function pauseTransformFeedback():Void;
	function readBuffer(src:Float):Void;
	function renderbufferStorageMultisample(target:Float, samples:Float, internalformat:Float, width:Float, height:Float):Void;
	function resumeTransformFeedback():Void;
	function samplerParameterf(sampler:js.html.WebGLSampler, pname:Float, param:Float):Void;
	function samplerParameteri(sampler:js.html.WebGLSampler, pname:Float, param:Float):Void;
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, format:Float, type:Float, source:haxe.extern.EitherType<js.html.HTMLCanvasElement, haxe.extern.EitherType<js.html.HTMLVideoElement, haxe.extern.EitherType<js.html.ImageData, haxe.extern.EitherType<js.html.HTMLImageElement, haxe.extern.EitherType<js.html.OffscreenCanvas, js.html.ImageBitmap>>>>>):Void { })
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, format:Float, type:Float, srcData:Null<ArrayBufferView>):Void { })
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, format:Float, type:Float, srcData:ArrayBufferView, srcOffset:Float):Void { })
	function texImage3D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, format:Float, type:Float, pboOffset:Float):Void;
	function texStorage2D(target:Float, levels:Float, internalformat:Float, width:Float, height:Float):Void;
	function texStorage3D(target:Float, levels:Float, internalformat:Float, width:Float, height:Float, depth:Float):Void;
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, zoffset:Float, width:Float, height:Float, depth:Float, format:Float, type:Float, source:haxe.extern.EitherType<js.html.HTMLCanvasElement, haxe.extern.EitherType<js.html.HTMLVideoElement, haxe.extern.EitherType<js.html.ImageData, haxe.extern.EitherType<js.html.HTMLImageElement, haxe.extern.EitherType<js.html.OffscreenCanvas, js.html.ImageBitmap>>>>>):Void { })
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, zoffset:Float, width:Float, height:Float, depth:Float, format:Float, type:Float, srcData:Null<ArrayBufferView>, ?srcOffset:Float):Void { })
	function texSubImage3D(target:Float, level:Float, xoffset:Float, yoffset:Float, zoffset:Float, width:Float, height:Float, depth:Float, format:Float, type:Float, pboOffset:Float):Void;
	@:overload(function(program:js.html.WebGLProgram, varyings:Iterable<String>, bufferMode:Float):Void { })
	function transformFeedbackVaryings(program:js.html.WebGLProgram, varyings:std.Array<String>, bufferMode:Float):Void;
	function uniform1ui(location:Null<js.html.WebGLUniformLocation>, v0:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform1uiv(location:Null<js.html.WebGLUniformLocation>, data:haxe.extern.EitherType<Uint32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	function uniform2ui(location:Null<js.html.WebGLUniformLocation>, v0:Float, v1:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform2uiv(location:Null<js.html.WebGLUniformLocation>, data:haxe.extern.EitherType<Uint32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	function uniform3ui(location:Null<js.html.WebGLUniformLocation>, v0:Float, v1:Float, v2:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform3uiv(location:Null<js.html.WebGLUniformLocation>, data:haxe.extern.EitherType<Uint32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	function uniform4ui(location:Null<js.html.WebGLUniformLocation>, v0:Float, v1:Float, v2:Float, v3:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform4uiv(location:Null<js.html.WebGLUniformLocation>, data:haxe.extern.EitherType<Uint32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	function uniformBlockBinding(program:js.html.WebGLProgram, uniformBlockIndex:Float, uniformBlockBinding:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix2x3fv(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<Float32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix2x4fv(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<Float32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix3x2fv(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<Float32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix3x4fv(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<Float32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix4x2fv(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<Float32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix4x3fv(location:Null<js.html.WebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<Float32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	function vertexAttribDivisor(index:Float, divisor:Float):Void;
	function vertexAttribI4i(index:Float, x:Float, y:Float, z:Float, w:Float):Void;
	@:overload(function(index:Float, values:Iterable<Float>):Void { })
	function vertexAttribI4iv(index:Float, values:haxe.extern.EitherType<Int32Array, std.Array<Float>>):Void;
	function vertexAttribI4ui(index:Float, x:Float, y:Float, z:Float, w:Float):Void;
	@:overload(function(index:Float, values:Iterable<Float>):Void { })
	function vertexAttribI4uiv(index:Float, values:haxe.extern.EitherType<Uint32Array, std.Array<Float>>):Void;
	function vertexAttribIPointer(index:Float, size:Float, type:Float, stride:Float, offset:Float):Void;
	function waitSync(sync:js.html.WebGLSync, flags:Float, timeout:Float):Void;
	final ACTIVE_UNIFORM_BLOCKS : Float;
	final ALREADY_SIGNALED : Float;
	final ANY_SAMPLES_PASSED : Float;
	final ANY_SAMPLES_PASSED_CONSERVATIVE : Float;
	final COLOR : Float;
	final COLOR_ATTACHMENT1 : Float;
	final COLOR_ATTACHMENT10 : Float;
	final COLOR_ATTACHMENT11 : Float;
	final COLOR_ATTACHMENT12 : Float;
	final COLOR_ATTACHMENT13 : Float;
	final COLOR_ATTACHMENT14 : Float;
	final COLOR_ATTACHMENT15 : Float;
	final COLOR_ATTACHMENT2 : Float;
	final COLOR_ATTACHMENT3 : Float;
	final COLOR_ATTACHMENT4 : Float;
	final COLOR_ATTACHMENT5 : Float;
	final COLOR_ATTACHMENT6 : Float;
	final COLOR_ATTACHMENT7 : Float;
	final COLOR_ATTACHMENT8 : Float;
	final COLOR_ATTACHMENT9 : Float;
	final COMPARE_REF_TO_TEXTURE : Float;
	final CONDITION_SATISFIED : Float;
	final COPY_READ_BUFFER : Float;
	final COPY_READ_BUFFER_BINDING : Float;
	final COPY_WRITE_BUFFER : Float;
	final COPY_WRITE_BUFFER_BINDING : Float;
	final CURRENT_QUERY : Float;
	final DEPTH : Float;
	final DEPTH24_STENCIL8 : Float;
	final DEPTH32F_STENCIL8 : Float;
	final DEPTH_COMPONENT24 : Float;
	final DEPTH_COMPONENT32F : Float;
	final DRAW_BUFFER0 : Float;
	final DRAW_BUFFER1 : Float;
	final DRAW_BUFFER10 : Float;
	final DRAW_BUFFER11 : Float;
	final DRAW_BUFFER12 : Float;
	final DRAW_BUFFER13 : Float;
	final DRAW_BUFFER14 : Float;
	final DRAW_BUFFER15 : Float;
	final DRAW_BUFFER2 : Float;
	final DRAW_BUFFER3 : Float;
	final DRAW_BUFFER4 : Float;
	final DRAW_BUFFER5 : Float;
	final DRAW_BUFFER6 : Float;
	final DRAW_BUFFER7 : Float;
	final DRAW_BUFFER8 : Float;
	final DRAW_BUFFER9 : Float;
	final DRAW_FRAMEBUFFER : Float;
	final DRAW_FRAMEBUFFER_BINDING : Float;
	final DYNAMIC_COPY : Float;
	final DYNAMIC_READ : Float;
	final FLOAT_32_UNSIGNED_INT_24_8_REV : Float;
	final FLOAT_MAT2x3 : Float;
	final FLOAT_MAT2x4 : Float;
	final FLOAT_MAT3x2 : Float;
	final FLOAT_MAT3x4 : Float;
	final FLOAT_MAT4x2 : Float;
	final FLOAT_MAT4x3 : Float;
	final FRAGMENT_SHADER_DERIVATIVE_HINT : Float;
	final FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE : Float;
	final FRAMEBUFFER_ATTACHMENT_BLUE_SIZE : Float;
	final FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING : Float;
	final FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE : Float;
	final FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE : Float;
	final FRAMEBUFFER_ATTACHMENT_GREEN_SIZE : Float;
	final FRAMEBUFFER_ATTACHMENT_RED_SIZE : Float;
	final FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE : Float;
	final FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER : Float;
	final FRAMEBUFFER_DEFAULT : Float;
	final FRAMEBUFFER_INCOMPLETE_MULTISAMPLE : Float;
	final HALF_FLOAT : Float;
	final INTERLEAVED_ATTRIBS : Float;
	final INT_2_10_10_10_REV : Float;
	final INT_SAMPLER_2D : Float;
	final INT_SAMPLER_2D_ARRAY : Float;
	final INT_SAMPLER_3D : Float;
	final INT_SAMPLER_CUBE : Float;
	final INVALID_INDEX : Float;
	final MAX : Float;
	final MAX_3D_TEXTURE_SIZE : Float;
	final MAX_ARRAY_TEXTURE_LAYERS : Float;
	final MAX_CLIENT_WAIT_TIMEOUT_WEBGL : Float;
	final MAX_COLOR_ATTACHMENTS : Float;
	final MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS : Float;
	final MAX_COMBINED_UNIFORM_BLOCKS : Float;
	final MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS : Float;
	final MAX_DRAW_BUFFERS : Float;
	final MAX_ELEMENTS_INDICES : Float;
	final MAX_ELEMENTS_VERTICES : Float;
	final MAX_ELEMENT_INDEX : Float;
	final MAX_FRAGMENT_INPUT_COMPONENTS : Float;
	final MAX_FRAGMENT_UNIFORM_BLOCKS : Float;
	final MAX_FRAGMENT_UNIFORM_COMPONENTS : Float;
	final MAX_PROGRAM_TEXEL_OFFSET : Float;
	final MAX_SAMPLES : Float;
	final MAX_SERVER_WAIT_TIMEOUT : Float;
	final MAX_TEXTURE_LOD_BIAS : Float;
	final MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS : Float;
	final MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS : Float;
	final MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS : Float;
	final MAX_UNIFORM_BLOCK_SIZE : Float;
	final MAX_UNIFORM_BUFFER_BINDINGS : Float;
	final MAX_VARYING_COMPONENTS : Float;
	final MAX_VERTEX_OUTPUT_COMPONENTS : Float;
	final MAX_VERTEX_UNIFORM_BLOCKS : Float;
	final MAX_VERTEX_UNIFORM_COMPONENTS : Float;
	final MIN : Float;
	final MIN_PROGRAM_TEXEL_OFFSET : Float;
	final OBJECT_TYPE : Float;
	final PACK_ROW_LENGTH : Float;
	final PACK_SKIP_PIXELS : Float;
	final PACK_SKIP_ROWS : Float;
	final PIXEL_PACK_BUFFER : Float;
	final PIXEL_PACK_BUFFER_BINDING : Float;
	final PIXEL_UNPACK_BUFFER : Float;
	final PIXEL_UNPACK_BUFFER_BINDING : Float;
	final QUERY_RESULT : Float;
	final QUERY_RESULT_AVAILABLE : Float;
	final R11F_G11F_B10F : Float;
	final R16F : Float;
	final R16I : Float;
	final R16UI : Float;
	final R32F : Float;
	final R32I : Float;
	final R32UI : Float;
	final R8 : Float;
	final R8I : Float;
	final R8UI : Float;
	final R8_SNORM : Float;
	final RASTERIZER_DISCARD : Float;
	final READ_BUFFER : Float;
	final READ_FRAMEBUFFER : Float;
	final READ_FRAMEBUFFER_BINDING : Float;
	final RED : Float;
	final RED_INTEGER : Float;
	final RENDERBUFFER_SAMPLES : Float;
	final RG : Float;
	final RG16F : Float;
	final RG16I : Float;
	final RG16UI : Float;
	final RG32F : Float;
	final RG32I : Float;
	final RG32UI : Float;
	final RG8 : Float;
	final RG8I : Float;
	final RG8UI : Float;
	final RG8_SNORM : Float;
	final RGB10_A2 : Float;
	final RGB10_A2UI : Float;
	final RGB16F : Float;
	final RGB16I : Float;
	final RGB16UI : Float;
	final RGB32F : Float;
	final RGB32I : Float;
	final RGB32UI : Float;
	final RGB8 : Float;
	final RGB8I : Float;
	final RGB8UI : Float;
	final RGB8_SNORM : Float;
	final RGB9_E5 : Float;
	final RGBA16F : Float;
	final RGBA16I : Float;
	final RGBA16UI : Float;
	final RGBA32F : Float;
	final RGBA32I : Float;
	final RGBA32UI : Float;
	final RGBA8 : Float;
	final RGBA8I : Float;
	final RGBA8UI : Float;
	final RGBA8_SNORM : Float;
	final RGBA_INTEGER : Float;
	final RGB_INTEGER : Float;
	final RG_INTEGER : Float;
	final SAMPLER_2D_ARRAY : Float;
	final SAMPLER_2D_ARRAY_SHADOW : Float;
	final SAMPLER_2D_SHADOW : Float;
	final SAMPLER_3D : Float;
	final SAMPLER_BINDING : Float;
	final SAMPLER_CUBE_SHADOW : Float;
	final SEPARATE_ATTRIBS : Float;
	final SIGNALED : Float;
	final SIGNED_NORMALIZED : Float;
	final SRGB : Float;
	final SRGB8 : Float;
	final SRGB8_ALPHA8 : Float;
	final STATIC_COPY : Float;
	final STATIC_READ : Float;
	final STENCIL : Float;
	final STREAM_COPY : Float;
	final STREAM_READ : Float;
	final SYNC_CONDITION : Float;
	final SYNC_FENCE : Float;
	final SYNC_FLAGS : Float;
	final SYNC_FLUSH_COMMANDS_BIT : Float;
	final SYNC_GPU_COMMANDS_COMPLETE : Float;
	final SYNC_STATUS : Float;
	final TEXTURE_2D_ARRAY : Float;
	final TEXTURE_3D : Float;
	final TEXTURE_BASE_LEVEL : Float;
	final TEXTURE_BINDING_2D_ARRAY : Float;
	final TEXTURE_BINDING_3D : Float;
	final TEXTURE_COMPARE_FUNC : Float;
	final TEXTURE_COMPARE_MODE : Float;
	final TEXTURE_IMMUTABLE_FORMAT : Float;
	final TEXTURE_IMMUTABLE_LEVELS : Float;
	final TEXTURE_MAX_LEVEL : Float;
	final TEXTURE_MAX_LOD : Float;
	final TEXTURE_MIN_LOD : Float;
	final TEXTURE_WRAP_R : Float;
	final TIMEOUT_EXPIRED : Float;
	final TIMEOUT_IGNORED : Float;
	final TRANSFORM_FEEDBACK : Float;
	final TRANSFORM_FEEDBACK_ACTIVE : Float;
	final TRANSFORM_FEEDBACK_BINDING : Float;
	final TRANSFORM_FEEDBACK_BUFFER : Float;
	final TRANSFORM_FEEDBACK_BUFFER_BINDING : Float;
	final TRANSFORM_FEEDBACK_BUFFER_MODE : Float;
	final TRANSFORM_FEEDBACK_BUFFER_SIZE : Float;
	final TRANSFORM_FEEDBACK_BUFFER_START : Float;
	final TRANSFORM_FEEDBACK_PAUSED : Float;
	final TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN : Float;
	final TRANSFORM_FEEDBACK_VARYINGS : Float;
	final UNIFORM_ARRAY_STRIDE : Float;
	final UNIFORM_BLOCK_ACTIVE_UNIFORMS : Float;
	final UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES : Float;
	final UNIFORM_BLOCK_BINDING : Float;
	final UNIFORM_BLOCK_DATA_SIZE : Float;
	final UNIFORM_BLOCK_INDEX : Float;
	final UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER : Float;
	final UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER : Float;
	final UNIFORM_BUFFER : Float;
	final UNIFORM_BUFFER_BINDING : Float;
	final UNIFORM_BUFFER_OFFSET_ALIGNMENT : Float;
	final UNIFORM_BUFFER_SIZE : Float;
	final UNIFORM_BUFFER_START : Float;
	final UNIFORM_IS_ROW_MAJOR : Float;
	final UNIFORM_MATRIX_STRIDE : Float;
	final UNIFORM_OFFSET : Float;
	final UNIFORM_SIZE : Float;
	final UNIFORM_TYPE : Float;
	final UNPACK_IMAGE_HEIGHT : Float;
	final UNPACK_ROW_LENGTH : Float;
	final UNPACK_SKIP_IMAGES : Float;
	final UNPACK_SKIP_PIXELS : Float;
	final UNPACK_SKIP_ROWS : Float;
	final UNSIGNALED : Float;
	final UNSIGNED_INT_10F_11F_11F_REV : Float;
	final UNSIGNED_INT_24_8 : Float;
	final UNSIGNED_INT_2_10_10_10_REV : Float;
	final UNSIGNED_INT_5_9_9_9_REV : Float;
	final UNSIGNED_INT_SAMPLER_2D : Float;
	final UNSIGNED_INT_SAMPLER_2D_ARRAY : Float;
	final UNSIGNED_INT_SAMPLER_3D : Float;
	final UNSIGNED_INT_SAMPLER_CUBE : Float;
	final UNSIGNED_INT_VEC2 : Float;
	final UNSIGNED_INT_VEC3 : Float;
	final UNSIGNED_INT_VEC4 : Float;
	final UNSIGNED_NORMALIZED : Float;
	final VERTEX_ARRAY_BINDING : Float;
	final VERTEX_ATTRIB_ARRAY_DIVISOR : Float;
	final VERTEX_ATTRIB_ARRAY_INTEGER : Float;
	final WAIT_FAILED : Float;
}