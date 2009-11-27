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
package org.amqp.methods.basic
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
    public class Qos extends Method implements ArgumentReader, ArgumentWriter
    {
         private var _prefetchsize:int = 0;
         private var _prefetchcount:int = 0;
         private var _global:Boolean = false;

         public function get prefetchsize():int {return _prefetchsize;}
         public function get prefetchcount():int {return _prefetchcount;}
         public function get global():Boolean {return _global;}

         public function set prefetchsize(x:int):void {_prefetchsize = x;}
         public function set prefetchcount(x:int):void {_prefetchcount = x;}
         public function set global(x:Boolean):void {_global = x;}

         override public function hasResponse():Boolean {
             return null != getResponse();
         }

         override public function getResponse():Method {
             return new QosOk();
         }

         override public function isBottomHalf():Boolean {
             return false;
         }

         override public function getClassId():int{
             return 60;
         }

         override public function getMethodId():int{
             return 10;
         }

         override public function writeArgumentsTo(writer:MethodArgumentWriter):void {
             writer.writeLong(_prefetchsize);
             writer.writeShort(_prefetchcount);
             writer.writeBit(_global);
         }

         override public function readArgumentsFrom(reader:MethodArgumentReader):void {
             _prefetchsize = reader.readLong();
             _prefetchcount = reader.readShort();
             _global = reader.readBit();
         }

         public function dump():void {
             trace("-------- basic.Qos --------");
             trace("prefetchsize: {" + _prefetchsize + "}");
             trace("prefetchcount: {" + _prefetchcount + "}");
             trace("global: {" + _global + "}");
         }
    }
}