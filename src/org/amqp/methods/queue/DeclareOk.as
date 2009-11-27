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
package org.amqp.methods.queue
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
    public class DeclareOk extends Method implements ArgumentReader, ArgumentWriter
    {
         private var _queue:String = "";
         private var _messagecount:int = 0;
         private var _consumercount:int = 0;

         public function get queue():String {return _queue;}
         public function get messagecount():int {return _messagecount;}
         public function get consumercount():int {return _consumercount;}

         public function set queue(x:String):void {_queue = x;}
         public function set messagecount(x:int):void {_messagecount = x;}
         public function set consumercount(x:int):void {_consumercount = x;}

         override public function hasResponse():Boolean {
             return null != getResponse();
         }


         override public function isBottomHalf():Boolean {
             return true;
         }

         override public function getClassId():int{
             return 50;
         }

         override public function getMethodId():int{
             return 11;
         }

         override public function writeArgumentsTo(writer:MethodArgumentWriter):void {
             writer.writeShortstr(_queue);
             writer.writeLong(_messagecount);
             writer.writeLong(_consumercount);
         }

         override public function readArgumentsFrom(reader:MethodArgumentReader):void {
             _queue = reader.readShortstr();
             _messagecount = reader.readLong();
             _consumercount = reader.readLong();
         }

         public function dump():void {
             trace("-------- queue.DeclareOk --------");
             trace("queue: {" + _queue + "}");
             trace("messagecount: {" + _messagecount + "}");
             trace("consumercount: {" + _consumercount + "}");
         }
    }
}