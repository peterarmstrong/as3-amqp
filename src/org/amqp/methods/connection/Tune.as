/**
 * ---------------------------------------------------------------------------
 *   Copyright (C) 2008 0x6e6562
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 * ---------------------------------------------------------------------------
 **/
package org.amqp.methods.connection
{
    import org.amqp.Method;
    import org.amqp.LongString;
    import org.amqp.methods.ArgumentReader;
    import org.amqp.methods.ArgumentWriter;
    import org.amqp.methods.MethodArgumentReader;
    import org.amqp.methods.MethodArgumentWriter;
    import com.ericfeminella.utils.Map;
    import com.ericfeminella.utils.HashMap;
    import org.amqp.impl.ByteArrayLongString;
    import flash.utils.ByteArray;

    /**
     *   THIS IS AUTO-GENERATED CODE. DO NOT EDIT!
     **/
    public class Tune extends Method implements ArgumentReader, ArgumentWriter
    {
         private var _channelmax:int = 0;
         private var _framemax:int = 0;
         private var _heartbeat:int = 0;

         public function get channelmax():int {return _channelmax;}
         public function get framemax():int {return _framemax;}
         public function get heartbeat():int {return _heartbeat;}

         public function set channelmax(x:int):void {_channelmax = x;}
         public function set framemax(x:int):void {_framemax = x;}
         public function set heartbeat(x:int):void {_heartbeat = x;}

         override public function hasResponse():Boolean {
             return null != getResponse();
         }

         override public function getResponse():Method {
             return new TuneOk();
         }

         override public function isBottomHalf():Boolean {
             return false;
         }

         override public function getClassId():int{
             return 10;
         }

         override public function getMethodId():int{
             return 30;
         }

         override public function writeArgumentsTo(writer:MethodArgumentWriter):void {
             writer.writeShort(_channelmax);
             writer.writeLong(_framemax);
             writer.writeShort(_heartbeat);
         }

         override public function readArgumentsFrom(reader:MethodArgumentReader):void {
             _channelmax = reader.readShort();
             _framemax = reader.readLong();
             _heartbeat = reader.readShort();
         }

         public function dump():void {
             trace("-------- connection.Tune --------");
             trace("channelmax: {" + _channelmax + "}");
             trace("framemax: {" + _framemax + "}");
             trace("heartbeat: {" + _heartbeat + "}");
         }
    }
}