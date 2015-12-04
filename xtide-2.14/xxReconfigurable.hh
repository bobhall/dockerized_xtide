// $Id: xxReconfigurable.hh 3960 2011-07-31 20:16:24Z flaterco $

/*  xxReconfigurable  That which implements reconfigure(), the callback used
    by xxMultiChoice.

    Copyright (C) 2011  David Flater.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

class xxReconfigurable {
public:
  virtual ~xxReconfigurable();
  virtual void reconfigure() = 0;

protected:
  xxReconfigurable();

private:
  // Prohibited operations not implemented.
  xxReconfigurable (const xxReconfigurable &);
  xxReconfigurable &operator= (const xxReconfigurable &);
};
